package com.hsk.interceptor;

import com.hsk.dto.Manager;
import com.hsk.dto.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor{
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        if(request.getMethod()=="POST") {
//            return true;
//        }else {
//            HttpSession httpSession = request.getSession(false); //若当前没有session，则不创建session
//            if (httpSession == null || httpSession.getAttribute("user_id") == null) //未登录状态
//            {
//                RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/user/loginUI.jsp");
//                rd.forward(request, response);
//                return false;
//            }else{
//                return true;
//            }
//        }

        System.out.println(request.getServletPath());
        HttpSession session = request.getSession();
        Manager manager=(Manager)session.getAttribute("manager");
//        String u = manager.getManager_id();
//        System.out.println(u);
        System.out.println("manager:"+manager);
        if(manager==null){
            response.sendRedirect(request.getContextPath()+ "/manager1/toMLogin");
            return false;
        }else{
            return true;
        }

//        HttpSession session = request.getSession();
//        Employee user=(Employee)session.getAttribute("e");
//        if(user==null){
//            response.sendRedirect(request.getContextPath()+"/login.jsp");
//            return false;
//        }else{
//            return true;
//        }

//        String uri = request.getRequestURI();
//        if(uri.indexOf("/login.do")>0){
//            return true;
//        }
//        HttpSession session = request.getSession();
//        User user = (User)session.getAttribute("user");
//        if(user!=null){
//            return true;
//        }
//        request.getRequestDispatcher("/login.jsp").forward(request, response);
//        return false;

    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
