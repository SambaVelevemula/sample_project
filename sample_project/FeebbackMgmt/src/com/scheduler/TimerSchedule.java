package com.scheduler;

import java.util.Calendar;
import java.util.TimeZone;
import java.util.Timer;
import java.util.concurrent.TimeUnit;
 
public class TimerSchedule {
 
    public static void main(String args[])
    {
                
        Calendar today = Calendar.getInstance();
        today.set(Calendar.DAY_OF_WEEK,Calendar.MONDAY);
        today.setTimeZone(TimeZone.getTimeZone("IST"));
        today.set(Calendar.HOUR_OF_DAY, 10);
        today.set(Calendar.MINUTE, 0);
        today.set(Calendar.SECOND, 0);
        Timer timer=new Timer();
        Scheduler sche=new Scheduler();
        timer.schedule(sche, today.getTime(), TimeUnit.MILLISECONDS.convert(1, TimeUnit.DAYS));
 }
 
}
 




