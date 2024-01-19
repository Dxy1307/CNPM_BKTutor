package com.webgiasu.controller.admin;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {

    @Autowired
    private IUserService userService;

    @GetMapping("/quan-tri/khach-hang/danh-sach")
    public ModelAndView showCustomer(@RequestParam("page") int page,
                                     @RequestParam("limit") int limit,
                                     @RequestParam("sortName") String sortName,
                                     @RequestParam("sortBy") String sortBy) {
        UserDTO model = new UserDTO();
        model.setPage(page);
        model.setLimit(limit);
        model.setSortName(sortName);
        model.setSortBy(sortBy);
        ModelAndView mav = new ModelAndView("/admin/customer/list");
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        model.setListResult(userService.findAllByRole(pageable, "USER"));
        model.setTotalItems(userService.getTotalItemByRole("USER"));
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        mav.addObject("model", model);
        return mav;
    }

    @GetMapping("/quan-tri/khach-hang/danh-sach/chi-tiet")
    public ModelAndView detailGuest(@RequestParam(value = "id") Long id, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/admin/customer/edit");
        UserDTO userDTO = new UserDTO();
        if (id != null) {
            userDTO = userService.findById(id);
        }
        mav.addObject("model", userDTO);
        return mav;
    }
}
