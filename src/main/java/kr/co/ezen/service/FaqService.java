package kr.co.ezen.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.ezen.beans.FaqBoardBean;
import kr.co.ezen.dao.FaqDAO;

@Service
public class FaqService {

	@Autowired
	public FaqDAO faqDAO;
	
	public List<FaqBoardBean> getFaqList(){
		
		return faqDAO.getFaqList();
	}
	
	public FaqBoardBean getDetail(int fb_no) {
		return faqDAO.getDetail(fb_no);
	}
	
	public FaqBoardBean getModify(int fb_no) {
		return faqDAO.getModify(fb_no);
	}
	
	public void faqModify(FaqBoardBean modifyFaqBoardBean) {
		faqDAO.faqModify(modifyFaqBoardBean);
	}
	
	public void faqWrite(FaqBoardBean writeFaqBoardBean) {
		faqDAO.faqWrite(writeFaqBoardBean);
	}
	
	public void faqDelete(int fb_no) {
		faqDAO.faqDelete(fb_no);
	}
}
