package ${package}.utility;

import com.google.gwt.i18n.client.DateTimeFormat;

import java.util.Date;

public class DateConverter {

    public static String convertToString(Date date, String pattern){
        DateTimeFormat dateTimeFormat = DateTimeFormat.getFormat(pattern);
        return dateTimeFormat.format(date);
    }

    public static Date convertToDate(String string, String pattern){
        Date dateTimeFormat = DateTimeFormat.getFormat(pattern).parse(string);
        return dateTimeFormat;
    }
}