package com.cn.test;

import com.cn.entity.PetinfoJs;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.ArrayList;
import java.util.List;

public class NFDFlightDataTaskListener implements ServletContextListener {
    public static List<PetinfoJs> list = null;

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        list = new ArrayList<PetinfoJs>();
        new TimerManager();
    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {

    }
}
