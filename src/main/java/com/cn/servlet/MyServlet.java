package com.cn.servlet;

import com.cn.action.ActionInterface;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

@WebServlet(name = "MyServlet", urlPatterns = "/MyServlet", initParams = {@WebInitParam(name = "actionconfig", value = "action.properties")})
public class MyServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static Properties actionParams;
    private static InputStream is;
    private static Map<String, ActionInterface> actionMap;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        String properFile = this.getInitParameter("actionconfig");
        is = MyServlet.class.getClassLoader().getResourceAsStream(properFile);
        actionParams = new Properties();
        try {
            actionParams.load(is);
            initActionMap(actionParams);
        } catch (IOException e) {
            e.printStackTrace();
            throw new ServletException("配置文件读取错误！");
        } catch (InstantiationException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw new ServletException("实例化Action对象出错！");
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw new ServletException("安全权限异常错误！");
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            throw new ServletException("加载class文件错误！");
        }
    }

    public MyServlet() {
        super();
    }

    private void initActionMap(Properties actionParams) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
        actionMap = new HashMap<String, ActionInterface>();
        Set<Object> keys = actionParams.keySet();//返回属性key的集合
        for (Object key : keys) {
            String className = actionParams.getProperty(key.toString());
            ActionInterface action = (ActionInterface) Class.forName(className.toString()).newInstance();
            actionMap.put(key.toString(), action);
        }
    }
}
