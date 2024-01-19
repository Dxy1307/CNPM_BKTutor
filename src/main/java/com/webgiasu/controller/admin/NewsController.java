package com.webgiasu.controller.admin;

import com.webgiasu.dto.NewDTO;
import com.webgiasu.service.ICategoryService;
import com.webgiasu.service.INewService;
import com.webgiasu.util.MessageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller(value = "newsControllerOfAdmin")
public class NewsController {

	@Autowired
	private INewService newService;

	@Autowired
	private ICategoryService categoryService;

	@Autowired
	private MessageUtil messageUtil;
	
	@RequestMapping(value = "/quan-tri/bai-viet/danh-sach", method = RequestMethod.GET)
	// Model là data sẽ đẩy ra thằng client
	// View là trang mà chúng ta định nghĩa trong folder views
	// tham số trong ngoặc thay cho NewsModel model = FormUtil.toModel(NewsModel.class, request);
	public ModelAndView showList(@RequestParam("page") int page,
								 @RequestParam("limit") int limit,
								 @RequestParam("sortName") String sortName,
								 @RequestParam("sortBy") String sortBy,
								 HttpServletRequest request) {
		NewDTO model = new NewDTO();
		model.setPage(page);
		model.setLimit(limit);
		model.setSortName(sortName);
		model.setSortBy(sortBy);
		// đẩy model ra ngoài view
		ModelAndView mav = new ModelAndView("admin/news/list");// hiểu được do file dispatcher-servlet
		Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
		model.setListResult(newService.findAll(pageable));
		model.setTotalItems(newService.getTotalItem());
		model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		// JpaRepository có sẵn pageable, không như servlet phải tự build
		mav.addObject("model", model); // request.setAttribute(SystemConstant.MODEL, model);
		return mav;
	}
	
	@RequestMapping(value = "/quan-tri/bai-viet/chinh-sua", method = RequestMethod.GET)
	// Model là data sẽ đẩy ra thằng client
	// View là trang mà chúng ta định nghĩa trong folder views
	public ModelAndView editNews(@RequestParam(value = "id", required = false) Long id, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("admin/news/edit");// hiểu được do file dispatcher-servlet
		NewDTO model = new NewDTO();
		if (id != null) {
			model = newService.findById(id);
		}
		if (request.getParameter("message") != null) {
			Map<String, String> message = messageUtil.getMessage(request.getParameter("message"));
			mav.addObject("message", message.get("message"));
			mav.addObject("alert", message.get("alert"));
		}
		mav.addObject("categories", categoryService.findAll());
		mav.addObject("model", model);
		return mav;
	}
	
}
