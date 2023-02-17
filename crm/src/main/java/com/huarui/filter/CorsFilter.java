package com.huarui.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CorsFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("kuayu");
        HttpServletResponse resp=(HttpServletResponse)servletResponse;
        HttpServletRequest req=(HttpServletRequest)servletRequest;
        resp.setHeader("Access-Control-Allow-Origin","http://localhost:8080");
        resp.setHeader("Access-Control-Allow-Methods","POST,GET,OPTIONS,DELETE,HEAD,PUT,PATCH");
        resp.setHeader("Access-Control-Max-Age","36000");
        resp.setHeader("Access-Control-Allow-Headers", "*");
        resp.setHeader("Access-Control-Allow-Credentials", "true");
        filterChain.doFilter(req,resp);
    }
    @Override
    public void destroy() {

    }
}
