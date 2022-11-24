package kr.co.ezen.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.ezen.beans.AcademyMemberBean;
import kr.co.ezen.beans.AcademyReviewBean;
import kr.co.ezen.beans.AcademySubjectBean;
import kr.co.ezen.beans.AcademyTeacherBean;
import kr.co.ezen.beans.MemberBean;
import kr.co.ezen.beans.TeacherReviewBean;
import kr.co.ezen.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	private BoardService boardService;
	
	//종합 학원 게시판 목록 호출
	@GetMapping("/gBoardList")
	public String main(@RequestParam("a_classify") int a_classify,
						Model model) {
		
		//ModelAndView 개념
		
		List<AcademyMemberBean> gBoardList =  boardService.getGBoardList(a_classify);
		
		model.addAttribute("gBoardList", gBoardList);
		
		
		return "board/gBoardList";
	}
	
	//종합 학원 게시판 상세보기
	@GetMapping("/gBoardRead")
	public String gBoardRead_temp(@RequestParam("a_memberNo") int a_memberNo,
								@ModelAttribute("reviewWrite") AcademyReviewBean academyReviewBean_write,
								HttpSession session,
								Model model) {
		int m_memberNo = 0;
		
		if(session.getAttribute("loginMemberBean")!=null) {
			MemberBean mBean = (MemberBean) session.getAttribute("loginMemberBean");
			m_memberNo = mBean.getM_memberNo();
		}
		
		AcademyMemberBean academyInfoBasic = boardService.getAcademyInfoBasic(a_memberNo);
		List<AcademyReviewBean> academyInfoReview = boardService.getAcademyInfoReview(a_memberNo, m_memberNo);
		List<AcademySubjectBean> academyInfoSubject = boardService.getAcademyInfoSubject(a_memberNo);
		List<AcademyTeacherBean> academyInfoTeacher = boardService.getAcademyInfoTeacher(a_memberNo);
		
		model.addAttribute("academyInfoBasic",academyInfoBasic);
		model.addAttribute("academyInfoReview",academyInfoReview);
		model.addAttribute("academyInfoSubject",academyInfoSubject);
		model.addAttribute("academyInfoTeacher",academyInfoTeacher);
		
		
		return "board/gBoardRead";
	}
	
	//강사 상세보기
	@GetMapping("/gBoardRead_teacher")
	public String gBoardRead_teacher(@RequestParam("a_memberNo") int a_memberNo,
									@RequestParam("t_name") String t_name,
									Model model) {
		
		AcademyTeacherBean teacherInfo = boardService.getTeacherInfo(a_memberNo, t_name);
		List<TeacherReviewBean> teacherReviewInfo = boardService.getTeacherReviewInfo(a_memberNo, t_name);
		
		model.addAttribute("teacherInfo",teacherInfo);
		model.addAttribute("teacherReviewInfo",teacherReviewInfo);
		
		return "board/gBoardRead_teacher";
	}
	
	//문의게시판 목록 호출
	@GetMapping("/askBoard")
	public String askBoard() {
		return "board/askBoard";
	}
	
	//학원소개
	@GetMapping("/about")
	public String index() {
		return "board/about";
	}
}
