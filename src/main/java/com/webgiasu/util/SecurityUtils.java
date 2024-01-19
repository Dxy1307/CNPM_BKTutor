package com.webgiasu.util;

import com.webgiasu.dto.MyUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils {

    // lấy được toàn bộ thông tin user mà thằng customUserDetailsService put vào
    public static MyUser getPrincipal() {
        MyUser myUser = (MyUser) (SecurityContextHolder.getContext()).getAuthentication().getPrincipal();
        return myUser;
    }

    @SuppressWarnings("unchecked")
    public static List<String> getAuthorities() {
        List<String> results = new ArrayList<>();
        // get được authority khi ta put trong file CustomUserDetailsService
        List<GrantedAuthority> authorities = (List<GrantedAuthority>)(SecurityContextHolder.getContext().getAuthentication().getAuthorities());
        for(GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
        return results;
    }



}
