package syngenta.der.security;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.stereotype.Component;

import syngenta.der.repository.UserAccountDAO;

@EnableWebSecurity
public class MultiSecurityConfigController {

	// @Resource(name = "userService")
	@Autowired
	// @Qualifier("userAccountService")
	private UserDetailsService userDetailsService;

	@Bean
	public BCryptPasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

	@Configuration
	@Order(1)
	public class APISecurityConfigration extends WebSecurityConfigurerAdapter {

		@Autowired
		private UnauthorizedEntryPoint unauthorizedEntryPoint;

		@Override
		public void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.userDetailsService(userDetailsService).passwordEncoder(encoder());
		}

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			http.cors().and().csrf().disable();
			http.antMatcher("/api/**").authorizeRequests().antMatchers("/api/authenticate").permitAll().anyRequest()
					.authenticated().and().exceptionHandling().authenticationEntryPoint(unauthorizedEntryPoint).and()
					.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);

			http.addFilterBefore(authenticationTokenFilterBean(), UsernamePasswordAuthenticationFilter.class);
		}

		@Override
		@Bean
		public AuthenticationManager authenticationManagerBean() throws Exception {
			return super.authenticationManagerBean();
		}

		@Bean
		public JwtAuthenticationFilter authenticationTokenFilterBean() throws Exception {
			return new JwtAuthenticationFilter();
		}

	}

	@Configuration
	@Order(2)
	public class WebSecurityConfigration extends WebSecurityConfigurerAdapter {

		@Bean
		public DaoAuthenticationProvider authenticationProvider() {
			DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
			authProvider.setUserDetailsService(userDetailsService);
			authProvider.setPasswordEncoder(encoder());

			return authProvider;
		}

		@Override
		protected void configure(AuthenticationManagerBuilder auth) throws Exception {
			auth.authenticationProvider(authenticationProvider());
		}

		@Override
		protected void configure(HttpSecurity http) throws Exception {
			// http.csrf().disable().
			// The pages does not require login
			http.authorizeRequests().antMatchers("/", "/welcome", "/login", "/logout").permitAll();

			// /userInfo page requires login as USER or ADMIN.
			// If no login, it will redirect to /login page.
			// http.authorizeRequests().antMatchers("/userInfo").access("hasAnyRole('ROLE_USER',
			// 'ROLE_ADMIN')");

			// For ADMIN only.
			// http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");

			// When the user has logged in as XX.
			// But access a page that requires role YY,
			// AccessDeniedException will throw.
			http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");

			// Config for Login Form
			http.authorizeRequests().anyRequest().authenticated().and().formLogin()//
					// Submit URL of login page.
					// .loginProcessingUrl("/perform_login") // Submit URL
					.loginPage("/login")//
					.defaultSuccessUrl("/welcome", true)//
					.failureUrl("/login?error=true")//
					// .usernameParameter("username")//
					// .passwordParameter("password")
					// Config for Logout Page
					.and().logout().logoutSuccessUrl("/login?logout=true").invalidateHttpSession(true)
					.deleteCookies("JSESSIONID");

			// http.authorizeRequests().anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll()
			// .successForwardUrl("/index").and().logout().permitAll()
			// .logoutRequestMatcher(new
			// AntPathRequestMatcher("/logout")).logoutSuccessUrl("/login");
			// http.csrf().disable().authorizeRequests().anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll();

		}

	}

}