package com.webgiasu.util;

import com.webgiasu.service.ILopDKService;
import com.webgiasu.service.ILopService;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CommonInfoUtil {

    private static IUserService userService;

    private static ILopDKService lopDKService;

    private static ILopService lopService;

    @Autowired
    public void setUserService(IUserService userService) {
        CommonInfoUtil.userService = userService;
    }

    @Autowired
    public void setLopDKService(ILopDKService lopDKService) {
        CommonInfoUtil.lopDKService = lopDKService;
    }

    @Autowired
    public void setLopService(ILopService lopService) {
        CommonInfoUtil.lopService = lopService;
    }

    public static int sumOfTutorTemp() {
        return userService.getTotalItemByRole("TEMP");
    }

    public static int sumOfTutor() {
        return userService.getTotalItemByRole("TUTOR");
    }

    public static int sumOfClassPending() {
        return lopDKService.getTotalItemPH() + lopDKService.getTotalItemSV();
    }

    public static int sumOfClass() {
        return lopService.getTotalItemPH() + lopService.getTotalItemSV();
    }
}
