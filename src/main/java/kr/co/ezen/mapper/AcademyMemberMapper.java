package kr.co.ezen.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


import kr.co.ezen.beans.AcademyMemberBean;

public interface AcademyMemberMapper {
	//학원회원가입
	@Insert("insert into academyMemberT(a_memberNo, a_id, a_pw, a_name,"
			+ " a_CRN, a_location, a_locationDetail, a_tele, a_classify)"
			+ "values(a_sq.nextval, #{a_id}, #{a_pw}, #{a_name}, #{a_CRN},"
			+ " #{a_location}, #{a_locationDetail}, #{a_tele}, #{a_classify})")
	void joinAcademyMember(AcademyMemberBean joinAcademyMemberBean);
	//학원회원로그인	
	@Select("select * from academyMemberT where a_id = #{a_id, jdbcType=VARCHAR} and a_pw = #{a_pw, jdbcType=VARCHAR}")
	AcademyMemberBean getloginAcademyMember(AcademyMemberBean academyMemberBean);
	//학원회원수정페이지
	@Select("select * from academyMemberT where a_memberNo = #{a_memberNo}")
	AcademyMemberBean getModifyAcademyMember(AcademyMemberBean modifyAcademyMemberBean);
	//학원회원수정
	@Update("update academyMemberT set a_location = #{a_location}, a_locationDetail = #{a_locationDetail},"
			+ "a_tele = #{a_tele}, a_classify = #{a_classify} where a_memberNo = #{a_memberNo}")
	void modifyAcademyMember(AcademyMemberBean modifyAcademyMemberBean);
	//학원회원삭제
	@Delete("delete from academyMemberT where a_memberNo = #{a_memberNo}")
	void deleteAcademyMember(int a_memberNo);
	//학원소개입력
	@Insert("insert into academyInfoT(a_memberNo, a_introduce, a_mainImg, a_file, a_gradeMin, a_gradeMax, "
			+ "a_shuttle, a_openTime, a_closeTime) values(#{a_memberNo}, #{a_introduce}, #{a_mainImg}, #{a_file}, "
			+ "#{a_gradeMin}, #{a_gradeMax}, #{a_shuttle}, #{a_openTime}, #{a_closeTime})")
	void insertAcademyIntroduce(AcademyMemberBean introduceAcademyMemberBean);
	//학원소개정보조회
	@Select("select * from academyInfoT where a_memberNo = #{a_memberNo}")
	AcademyMemberBean infoIntroduce(int a_memberNo);
	//학원소개정보수정
	@Update("update academyInfoT set a_introduce = #{a_introduce}, a_mainImg = #{a_mainImg}, a_file = #{a_file},"
			+ "a_gradeMin = #{a_gradeMin}, a_gradeMax = #{a_gradeMax}, a_shuttle = #{a_shuttle}, a_openTime = #{a_openTime}, a_closeTime = #{a_closeTime}"
			+ " where a_memberNo = #{a_memberNo}")
	void modifyAcademyIntroduce(AcademyMemberBean infoIntroduce);
	//학원소개정보삭제
	@Delete("delete from academyInfoT where a_memberNo = #{a_memberNo}")
	void deleteAcademyIntroduce(int a_memberNo);
	
	//관리자 페이지 : 학원 목록
		@Select("select a_classify, a_name, a_memberNo, a_joinDate, a_infoExpose "
				+ "from academyMemberT ")
		List<AcademyMemberBean> getAdAcademyList();
		//총 학원 수
		@Select("select count(*) from academyMemberT")
		int getAdminAcaCnt(AcademyMemberBean myAdminAcaBean);
}
