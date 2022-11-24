package kr.co.ezen.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.internal.util.stereotypes.Lazy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.ezen.beans.AcademyMemberBean;
import kr.co.ezen.service.AcademyMemberService;
@RequestMapping("/academymember")
@Controller
public class AcademyMemberController {
	
	@Autowired
	@Lazy
	private AcademyMemberBean loginAcademyMemberBean;
	
	@Autowired
	private AcademyMemberService academyMemberService;
	
	
	//학원회원가입페이지
	@GetMapping("/join")
	public String join(@ModelAttribute("joinAcademyMemberBean") AcademyMemberBean joinAcademyMemberBean) {
	 
		return "academymember/join";
	}
	//학원회원가입
	@PostMapping("/join_pro")
	public String join_pro(@ModelAttribute("joinAcademyMemberBean") AcademyMemberBean joinAcademyMemberBean, BindingResult result){
	if(result.hasErrors()) {
		return "academymember/join";
	}
	academyMemberService.joinAcademyMember(joinAcademyMemberBean);
		return "index";
	}
	//학원로그인페이지
	@GetMapping("/login")
	public String login(@ModelAttribute("loginAcademyMemberBean") AcademyMemberBean loginAcademyMemberBean, Model model){
		
		model.addAttribute("loginAcademyMemberBean", loginAcademyMemberBean);
		
		return "academymember/login";
	}
	//학원로그인
	@PostMapping("login_pro")
	public String login_pro(@ModelAttribute("loginAcademyMemberBean") AcademyMemberBean loginAcademyMemberBean, BindingResult result, HttpServletRequest request) {
		if(result.hasErrors()) {
			return "academymember/login";
		}
		academyMemberService.getloginAcademyMember(loginAcademyMemberBean);
		
		if(loginAcademyMemberBean.isAcademymemberlogin() == true) {
			HttpSession session = request.getSession();
			session.setAttribute("loginAcademyMemberBean", loginAcademyMemberBean);
			loginAcademyMemberBean.setAcademymemberlogin(true);
			return "index";
		}else {
			loginAcademyMemberBean.setAcademymemberlogin(false);
			return "index";
		}
		
	}
	//학원로그아웃
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	//학원정보수정페이지
	@GetMapping("modify")
	public String modify(@ModelAttribute("modifyAcademyMemberBean") AcademyMemberBean modifyAcademyMemberBean) {
		modifyAcademyMemberBean.setA_memberNo(loginAcademyMemberBean.getA_memberNo());
		academyMemberService.getModifyAcademyMember(modifyAcademyMemberBean);
		return "academymember/modify";
	}
	//학원정보수정
	@PostMapping("modify_pro")
	public String modify_pro(@ModelAttribute("modifyAcademyMemberBean") AcademyMemberBean modifyAcademyMemberBean, BindingResult result) {
		if(result.hasErrors()) {
			return "academymember/modify";
		}
		modifyAcademyMemberBean.setA_memberNo(loginAcademyMemberBean.getA_memberNo());
		academyMemberService.modifyAcademyMember(modifyAcademyMemberBean);
		return "academymember/login_success";
	}
	//학원정보삭제
	@GetMapping("delete")
	public String delete(HttpSession session) {
		academyMemberService.deleteAcademyIntroduce(loginAcademyMemberBean.getA_memberNo());
		academyMemberService.deleteAcademyMember(loginAcademyMemberBean.getA_memberNo());
		session.invalidate();
		return "index";
	}
	//학원소개작성페이지
	@GetMapping("/introduce")
	public String introduce(@ModelAttribute("introduceAcademyMemberBean")AcademyMemberBean introduceAcademyMemberBean) {
		introduceAcademyMemberBean.setA_memberNo(loginAcademyMemberBean.getA_memberNo());
		return "academymember/introduce";
	}
	//학원소개작성
	@PostMapping("/introduce_pro")
	public String introduce_pro(@ModelAttribute("introduceAcademyMemberBean")AcademyMemberBean introduceAcademyMemberBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "academymember/introduce";
		}
		
		academyMemberService.insertAcademyIntroduce(introduceAcademyMemberBean);
		return "academymember/login_success";
	}
	//학원소개확인
	@GetMapping("/introduce_info")
	public String introduce_info(@ModelAttribute("infoIntroduce")AcademyMemberBean infoIntroduce) {
		
		if(academyMemberService.infoIntroduce(infoIntroduce).getA_memberNo() == 0) {
			return "academymember/introduce_infonull";
		}
			
		academyMemberService.infoIntroduce(infoIntroduce);
		return "academymember/introduce_info";
		
		
		
	}
	//학원소개수정페이지
	@GetMapping("/introduce_modify")
	public String introduce_modify(@ModelAttribute("infoIntroduce")AcademyMemberBean infoIntroduce) {
		infoIntroduce.setA_memberNo(loginAcademyMemberBean.getA_memberNo());
		academyMemberService.infoIntroduce(infoIntroduce);
		return "academymember/introduce_modify";
	}
	//학원소개수정
	@PostMapping("/introduce_modifyPro")
	public String introduce_modifyPro(@ModelAttribute("infoIntroduce")AcademyMemberBean infoIntroduce, BindingResult result) {
		if(result.hasErrors()) {
			return "academymember/introduce_modify";
		}
		
		academyMemberService.modifyAcademyIntroduce(infoIntroduce);
		return "academymember/login_success";
	}
	//학원소개삭제
	@GetMapping("/introduce_delete")
	public String introduce_delete() {
		academyMemberService.deleteAcademyIntroduce(loginAcademyMemberBean.getA_memberNo());
		return "academymember/login_success";
	}
	//로그인성공페이지이동
	@GetMapping("login_success")
	public String login_success() {
		return "academymember/login_success";
	}
	
	//관리자 학원 목록 페이지
		@GetMapping("/mypageAdmin_academy")
		public String abAacademyList(@ModelAttribute("myAdminAcaBean") AcademyMemberBean myAdminAcaBean,
									Model model) {
							
		List<AcademyMemberBean> adAcademylist = academyMemberService.getAdAcademyList();
		model.addAttribute("adAcademylist", adAcademylist);
						
		int adacatotCnt = academyMemberService.getAdminAcaCnt(myAdminAcaBean);
		model.addAttribute("adacatotCnt", adacatotCnt);
									
		return "academymember/mypageAdmin_academy";
		}
	
}
