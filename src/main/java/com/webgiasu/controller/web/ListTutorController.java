package com.webgiasu.controller.web;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ListTutorController {

    @Autowired
    private IUserService userService;

    @GetMapping("/doi-ngu-gia-su")
    public ModelAndView show(@RequestParam("page") int page,
                             @RequestParam("limit") int limit) {
        ModelAndView mav = new ModelAndView("/web/listTutor");
        UserDTO model = new UserDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setTotalItems(userService.getTotalItemByRole("TUTOR"));
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        model.setListResult(userService.findAllByRole(pageable, "TUTOR"));
        mav.addObject("model", model);
        return mav;
    }
}
