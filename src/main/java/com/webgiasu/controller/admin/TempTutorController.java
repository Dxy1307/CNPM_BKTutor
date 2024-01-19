package com.webgiasu.controller.admin;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TempTutorController {

    @Autowired
    private IUserService userService;

    @GetMapping("/quan-tri/gia-su-tam/danh-sach")
    public ModelAndView show(@RequestParam("page") int page,
                             @RequestParam("limit") int limit,
                             @RequestParam("sortName") String sortName,
                             @RequestParam("sortBy") String sortBy) {
        UserDTO model = new UserDTO();
        model.setPage(page);
        model.setLimit(limit);
        model.setSortName(sortName);
        model.setSortBy(sortBy);
        ModelAndView mav = new ModelAndView("/admin/tutor/listTemp");
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        model.setListResult(userService.findAllByRole(pageable, "TEMP"));
        model.setTotalItems(userService.getTotalItemByRole("TEMP"));
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        mav.addObject("model", model);
        return mav;
    }

    @GetMapping("/quan-tri/gia-su-tam/danh-sach/chi-tiet")
    public ModelAndView detailTemp(@RequestParam(value = "id") Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/tutor/detailTemp");
        UserDTO userDTO = userService.findById(id);
        mav.addObject("model", userDTO);
        return mav;
    }
}
