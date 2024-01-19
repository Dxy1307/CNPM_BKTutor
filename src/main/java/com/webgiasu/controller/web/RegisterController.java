package com.webgiasu.controller.web;

import com.google.gson.Gson;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IRoleService;
import com.webgiasu.service.IUserService;
import com.webgiasu.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Controller
public class RegisterController {

    @Autowired
    private IUserService userService;

    @Autowired
    private IRoleService roleService;

    @Autowired
    private MessageUtil messageUtil;

    @GetMapping("/dang-ky")
    public String registerShow(Model model, HttpServletRequest request) {
        UserDTO userDTO = new UserDTO();
        List<String> emailAll = userService.findAllEmail();
        List<String> phoneAll = userService.findAllPhone();
        Gson gson = new Gson();
        String emaildata = gson.toJson(emailAll);
        String phonedata = gson.toJson(phoneAll);
        model.addAttribute("emaildata", emaildata);
        model.addAttribute("phonedata", phonedata);
        model.addAttribute("user", userDTO);
        model.addAttribute("roles", roleService.findAll());
        if (request.getParameter("message") != null) {
            Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
            model.addAttribute("message", message.get("message"));
            model.addAttribute("alert", message.get("alert"));
        }
        return "web/register";
    }
}
