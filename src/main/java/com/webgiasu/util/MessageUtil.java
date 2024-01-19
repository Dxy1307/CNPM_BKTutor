package com.webgiasu.util;

import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.Map;

@Component
public class MessageUtil {

    public Map<String, String> getMessage(String message) {
        Map<String, String> result = new HashMap<>();
        if (message.equals("update_success")) {
            result.put("message", "Update sucess");
            result.put("alert", "success");
        } else if (message.equals("insert_success")) {
            result.put("message", "Insert success");
            result.put("alert", "success");
        } else if (message.equals("delete_success")) {
            result.put("message", "Delete success");
            result.put("alert", "success");
        } else if (message.equals("error_system")) {
            result.put("message", "Error system");
            result.put("alert", "danger");
        } else if (message.equals("register_success")) {
            result.put("message", "Đăng ký thành công");
            result.put("alert", "success");
        } else if (message.equals("register_error")) {
            result.put("message", "Tài khoản đã tồn tại");
            result.put("alert", "warning");
        }
        return result;
    }
}
