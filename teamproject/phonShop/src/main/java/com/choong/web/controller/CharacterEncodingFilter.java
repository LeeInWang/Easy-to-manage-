package com.choong.web.controller;



import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpFilter;



@WebFilter(urlPatterns = {"*.do","*.do2", "*.do3","*.do4","*.do5","*.do6","*.do7"},
initParams = @WebInitParam(name="boardEncoding", value="UTF-8"))


public class CharacterEncodingFilter extends HttpFilter implements Filter {
private static final long serialVersionUID = 1L;
private String encoding;


public CharacterEncodingFilter() {
  super();
}


public void init(FilterConfig fConfig) throws ServletException {
 encoding = fConfig.getInitParameter("boardEncoding");
}


public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {


request.setCharacterEncoding(encoding);
chain.doFilter(request, response);
}

public void destroy() {

}


}
