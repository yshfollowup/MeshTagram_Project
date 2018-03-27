package mvc.service;

import org.springframework.stereotype.Service;

@Service
public class ExtractService {
	public int extractYear(String param) {
		String extract = param.substring(0, 4);
		int year = Integer.parseInt(extract);
		return year;
	}
	
	public int extractMonth(String param) {
		String extract = param.substring(5, 7);
		int month = Integer.parseInt(extract);
		return month;
	}
	
	public int extractDay(String param) {
		String extract = param.substring(9, 11);
		int day = Integer.parseInt(extract);
		return day;
	}
}
