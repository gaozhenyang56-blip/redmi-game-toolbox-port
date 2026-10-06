package com.gzy.redmiport;

import java.lang.reflect.Method;

/** Use the original provider-backed preferences across the main and :ui processes. */
public final class PortPreferences {
    private static Object call(String name, Class<?>[] types, Object... args) {
        try {
            Method method = Class.forName("r4.a").getMethod(name, types);
            return method.invoke(null, args);
        } catch (Exception failure) { throw new IllegalStateException("Original preferences: " + name, failure); }
    }
    public static boolean bool(String key, boolean fallback) {
        return (Boolean) call("e", new Class<?>[]{String.class, boolean.class}, key, fallback);
    }
    public static int number(String key, int fallback) {
        return (Integer) call("h", new Class<?>[]{String.class, int.class}, key, fallback);
    }
    public static String text(String key, String fallback) {
        return (String) call("l", new Class<?>[]{String.class, String.class}, key, fallback);
    }
    public static void put(String key, boolean value) {
        call("n", new Class<?>[]{String.class, boolean.class}, key, value);
    }
    public static void put(String key, int value) {
        call("p", new Class<?>[]{String.class, int.class}, key, value);
    }
    public static void put(String key, String value) {
        call("r", new Class<?>[]{String.class, String.class}, key, value);
    }
}
