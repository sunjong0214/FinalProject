package kr.co.ezen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ezen.beans.FaqBoardBean;
import kr.co.ezen.service.FaqService;

@RequestMapping("/faq")
@Controller
public class FAQController {
	
	
	//FAQ 게시판
	@Autowired
	public FaqService faqService;
	
	@GetMapping("/faqBoard")
	public String faqlist(Model model) {
	 	List<FaqBoardBean> faqlist = faqService.getFaqList();
	 	model.addAttribute("faqlist", faqlist);
		return "faq/faqBoard";
	}
}
