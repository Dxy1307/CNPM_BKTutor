package com.webgiasu.security;

import com.webgiasu.util.SecurityUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

// sau khi authentication thành công, nhảy sang đây, handle xử lý authorization
@Component
public class CustomSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {

    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    @Override
    protected void handle(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException {
        // định tuyến url nào sẽ trả về
        String targetUrl = determineTargetUrl(authentication);
        if (response.isCommitted()) {
            return;
        }
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }

    @Override
    public RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

    @Override
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }

    private String determineTargetUrl(Authentication authentication) {
        String url = "";
        // if role is ADMIN so redirect to controller: /quan-tri/trang-chu
        // if role is USER so redirect to controller: /trang-chu
        List<String> roles = SecurityUtils.getAuthorities();
        if (isAdmin(roles)) {
            url = "/quan-tri/trang-chu";
        } else if(isUser(roles)) {
            url = "/trang-chu";
        }
        return url;
    }

    private boolean isAdmin(List<String> roles) {
        if (roles.contains("ADMIN")) {
            return true;
        }
        return false;
    }

    private boolean isUser(List<String> roles) {
        if (roles.contains("USER") || roles.contains("TEMP") || roles.contains("TUTOR")) {
            return true;
        }
        return false;
    }
}
