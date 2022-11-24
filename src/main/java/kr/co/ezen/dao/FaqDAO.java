package kr.co.ezen.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.ezen.beans.FaqBoardBean;
import kr.co.ezen.mapper.FaqMapper;

@Repository
public class FaqDAO {

	@Autowired
	public FaqMapper faqMapper;
	
	public List<FaqBoardBean> getFaqList(){
		return faqMapper.getFaqList();
	}
	
	public FaqBoardBean getDetail(int fb_no) {
		return faqMapper.getDetail(fb_no);
	}
	
	public FaqBoardBean getModify(int fb_no) {
		return faqMapper.getModify(fb_no);
	}
	
	public void faqModify(FaqBoardBean modifyFaqBoardBean) {
		faqMapper.faqModify(modifyFaqBoardBean);
	}
	
	public void faqWrite(FaqBoardBean writeFaqBoardBean) {
		faqMapper.faqWrite(writeFaqBoardBean);
	}
	
	public void faqDelete(int fb_no) {
		faqMapper.faqDelete(fb_no);
	}
}
