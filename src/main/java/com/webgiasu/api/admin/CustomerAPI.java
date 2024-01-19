package com.webgiasu.api.admin;

import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CustomerAPI {

    @Autowired
    private IUserService userService;

    @DeleteMapping("/api/customer/remove")
    public void deleteCustomers(@RequestBody long[] ids) {
        userService.delete(ids);
    }
}
