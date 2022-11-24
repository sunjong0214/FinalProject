package kr.co.ezen.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import kr.co.ezen.beans.FaqBoardBean;

public interface FaqMapper {

	@Select("select * from FAQboardT")
	List<FaqBoardBean> getFaqList();
	
	@Select("select * from FAQboardT where fb_no = #{fb_no}")
	FaqBoardBean getDetail(int fb_no);
	
	@Select("select * from FAQboardT where fb_no = #{fb_no}")
	FaqBoardBean getModify(int fb_no);
	
	@Update("update FAQboardT set fb_title = #{fb_title}, fb_contentsQ = #{fb_contentsQ}, fb_contentsA = #{fb_contentsA}"
			+ "where fb_no = #{fb_no}")
	void faqModify(FaqBoardBean modifyFaqBoardBean);
	
	@Insert("insert into FAQboardT (fb_no, fb_title, fb_contentsQ, fb_contentsA)"
			+ "values(fb_sq.nextval, #{fb_title}, #{fb_contentsQ}, #{fb_contentsA})")
	void faqWrite(FaqBoardBean writeFaqBoardBean);
	
	@Delete("delete from FAQboardT where fb_no = #{fb_no}")
	void faqDelete(int fb_no);
}
