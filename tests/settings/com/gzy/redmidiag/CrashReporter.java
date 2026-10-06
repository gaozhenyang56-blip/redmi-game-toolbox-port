package com.gzy.redmidiag;
public class CrashReporter {public static int failures;public static void record(String stage,Throwable failure){failures++;}}
