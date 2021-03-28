package team.project.easyTeaching.interceptor;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import team.project.easyTeaching.common.Const;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @Classname CheckLoginInterceptor
 * @Description TODO
 * @Created by 颜
 */

public class CheckLoginInterceptor extends HandlerInterceptorAdapter {
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler,HttpSession session)
            throws Exception {
        // 判断当前用户是否登录,已登录则放行,没登录则不放行,并且回到登录界面
        if (session.getAttribute(Const.CURRENT_USER) == null) {
            // 没有登录则不放行,并且回到登录界面
            response.sendRedirect("/login.jsp");
            return false;
        }
        System.out.println( session.getAttribute(Const.CURRENT_USER));
        return true; // 已登录则放行
    }
}

