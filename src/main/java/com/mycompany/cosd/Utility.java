
package com.mycompany.cosd;

/**
 *
 * @author shantanuunde
 */

import java.awt.Color;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import jakarta.servlet.http.HttpServletRequest;

public class Utility {

    /**
     * NOTE: there maybe problems with passwords!!!
     *
     * @param o
     * @return
     */
    public static String createJavaScriptFromObject(Object o) {
        String js = "";
        js += "<script>";
        js += "function fillFormFromJS() {";
        js += "var map = {";

        try {
            Field[] flds = o.getClass().getDeclaredFields();
            for (Field f : flds) {
                f.setAccessible(true);
                String key = f.getName();
                Object value = f.get(o);
                if (value instanceof String) {
                    //'fname': 'Ralph', 
                    js += "'" + key + "': '" + (String) value + "',";
                } else if (value instanceof Integer) {
                    js += "'" + key + "': '" + (Integer) value + "',";
                } else if (value instanceof Double) {
                    js += "'" + key + "': '" + (Double) value + "',";
                } else if (value instanceof Boolean) {
                    js += "'" + key + "': '" + (Boolean) value + "',";
                } else if (value instanceof Color) {
                    js += "'" + key + "': '" + convertColorToName((Color) value) + "',";
                } else if (value instanceof Date) {
                    //2016-08-17
                    DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                    js += "'" + key + "': '" + format.format((Date) value) + "',";
                }
            }

        } catch (Exception e) {
            System.err.println(e);
        }

        js += "};";
        js += "for(var key in map) {";
        js += "    document.getElementsByName(key)[0].value = map[key];";
        js += "}";
        js += "}";
        js += "</script>";
        return js;
    }

    /**
     * real dirty...
     *
     * @return
     */
    private static String convertColorToName(Color col) {
        String colorName = "";
        try {
            Map<Integer, String> map = new HashMap<Integer, String>();
            for (Field f : Color.class.getFields()) {
                if (f.getType() == Color.class) {
                    Color c = (Color) f.get(null);
                    map.put(c.getRGB(), f.getName());
                }
            }

            if (map.containsKey(col.getRGB())) {
                colorName = map.get(col.getRGB());
            }

        } catch (Exception e) {
            //System.err.println(e);
        }
        return colorName;
    }

    /**
     * TODO: NOTE: here would be a good place to do <c.out>, i.e., escape user
     * input
     *
     * @param c
     * @param request
     * @return
     */
    public static Object extractObjectFromRequest(Class<?> c, HttpServletRequest request) {
        Object o = null;
        try {
            o = c.getDeclaredConstructor().newInstance();
            Field[] flds = c.getDeclaredFields();
            for (Field f : flds) {
                String param = request.getParameter(f.getName());
                if (param != null && !param.isEmpty()) {
                    f.setAccessible(true);
                    Object par = null;
                    if (f.getType().equals(String.class)) {
                        par = param;
                    } else if (f.getType().getName().equals("int")) {
                        par = Integer.parseInt(param);
                    } else if (f.getType().getName().equals(Long.class)) {
                        par = Long.parseLong(param);
                    } else if (f.getType().getName().equals("double")) {
                        par = Double.parseDouble(param);
                    } else if (f.getType().getName().equals(Boolean.class)) {
                        par = Boolean.parseBoolean(param);
                    } else if (f.getType().getName().equals(Color.class)) {
                        //par = convertColorFromString(param);
                    } else if (f.getType().getName().equals(Date.class)) {
                        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
                        par = format.parse(param);
                    }
                    if (par != null) {
                        f.set(o, par);
                    }
                }
            }
        } catch (Exception e) {
            System.err.println(e);
        }
        return o;
    }


    /**
     * Not the fastest... but works. Checks for XML problematic characters:
     * "&'<>
     */
    public static String escapeXml(String in) {
        in = in.replace("&", "&amp;");
        in = in.replace("\"", "&#034");
        in = in.replace("'", "&#039");
        in = in.replace("<", "&lt;");
        in = in.replace(">", "&gt;");
        return in;
    }

    /**
     * Not the fastest... but works. Checks for SQL problematic characters: '%_
     */
    public static String escapeSql(String in) {
        in = in.replace("%", "&#037");
        in = in.replace("'", "&#039");
        in = in.replace("_", "&#095");
        return in;
    }

    /** 
     * for testing only
     */
    public static void main(String[] args) throws ParseException {
        String t1 = "hi ' there _+_ __ % like %%";
        System.out.println(escapeSql(t1));
        String t2 = "\"\" let's use <some> funny & not && so funny tag's";
        System.out.println(escapeXml(t2));
    }
}