package syngenta.der.entities;

import java.util.ArrayList;
import java.util.List;

public class ShareConstant {

	public static final List<String> trialStatusList = new ArrayList<String>(
			arrayToListConversion(new String[] { "Open", "Lock Upload", "Lock Approve", "Closed" }));
	
	public static final List<String> trialActiveList = new ArrayList<String>(
			arrayToListConversion(new String[] { "Active", "Inactive" }));

	public static final List<String> plotActiveList  = new ArrayList<String>(
			arrayToListConversion(new String[] { "Active", "Inactive" }));


	public static final List<String> plotStatusList = new ArrayList<String>(
			arrayToListConversion(new String[] { "Open", "Lock Upload", "Lock Approve" }));
	
	
	public static <T> List<T> arrayToListConversion(T array[]) {

		List<T> list = new ArrayList<>();

		for (T t : array) {

			list.add(t);
		}

		return list;
	}

}
