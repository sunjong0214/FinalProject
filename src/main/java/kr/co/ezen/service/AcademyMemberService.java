package kr.co.ezen.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.ezen.beans.AcademyMemberBean;
import kr.co.ezen.dao.AcademyMemberDAO;

@Service
@PropertySource("/WEB-INF/properties/option.properties")
public class AcademyMemberService {

	@Value("${path.upload}")
	private String path_upload;
	
	@Autowired
	private AcademyMemberDAO academyMemberDAO;
	
	@Autowired
	private AcademyMemberBean loginAcademyMemberBean;
	
	private String saveUploadfile(MultipartFile upload_file) {
		
		String file_name = upload_file.getOriginalFilename();
		
		try {
			upload_file.transferTo(new File(path_upload + "/" + file_name));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return file_name;
		
	}
	
	
	public void joinAcademyMember(AcademyMemberBean joinAcademyMemberBean) {
		academyMemberDAO.joinAcademyMember(joinAcademyMemberBean);
	}
	
	public void getloginAcademyMember(AcademyMemberBean academyMemberBean) {
		AcademyMemberBean loginacademyMemberBean2 = academyMemberDAO.getloginAcademyMember(academyMemberBean);
		
		if(loginacademyMemberBean2 != null) {
			loginAcademyMemberBean.setA_memberNo(loginacademyMemberBean2.getA_memberNo());
			loginAcademyMemberBean.setA_id(loginacademyMemberBean2.getA_id());
			loginAcademyMemberBean.setA_pw(loginacademyMemberBean2.getA_pw());
			loginAcademyMemberBean.setA_name(loginacademyMemberBean2.getA_name());
			loginAcademyMemberBean.setA_CRN(loginacademyMemberBean2.getA_CRN());
			loginAcademyMemberBean.setA_location(loginacademyMemberBean2.getA_location());
			loginAcademyMemberBean.setA_locationDetail(loginacademyMemberBean2.getA_locationDetail());
			loginAcademyMemberBean.setA_tele(loginacademyMemberBean2.getA_tele());
			loginAcademyMemberBean.setA_joinDate(loginacademyMemberBean2.getA_joinDate());
			loginAcademyMemberBean.setA_classify(loginacademyMemberBean2.getA_classify());
			loginAcademyMemberBean.setA_infoExpose(loginacademyMemberBean2.getA_infoExpose());
			
			academyMemberBean.setAcademymemberlogin(true);
			
		}
	}
	
	public void modifyAcademyMember(AcademyMemberBean modifyAcademyMemberBean) {
		academyMemberDAO.modifyAcademyMember(modifyAcademyMemberBean);
	}
	
	public AcademyMemberBean getModifyAcademyMember(AcademyMemberBean modifyAcademyMemberBean) {
		modifyAcademyMemberBean.setA_memberNo(loginAcademyMemberBean.getA_memberNo());
		AcademyMemberBean modifyAcademyMemberBean2 = academyMemberDAO.getModifyAcademyMember(modifyAcademyMemberBean);
		
		modifyAcademyMemberBean.setA_id(modifyAcademyMemberBean2.getA_id());
		modifyAcademyMemberBean.setA_name(modifyAcademyMemberBean2.getA_name());
		modifyAcademyMemberBean.setA_location(modifyAcademyMemberBean2.getA_location());
		modifyAcademyMemberBean.setA_locationDetail(modifyAcademyMemberBean2.getA_locationDetail());
		modifyAcademyMemberBean.setA_tele(modifyAcademyMemberBean2.getA_tele());
		modifyAcademyMemberBean.setA_classify(modifyAcademyMemberBean2.getA_classify());
		return modifyAcademyMemberBean;
	}
	
	public void deleteAcademyMember(int a_memberNo) {
		academyMemberDAO.deleteAcademyMember(a_memberNo);
	}
	
	public void insertAcademyIntroduce(AcademyMemberBean introduceAcademyMemberBean) {
		
		
		MultipartFile upload_file = introduceAcademyMemberBean.getUpload_file();
		MultipartFile upload_file2 = introduceAcademyMemberBean.getUpload_file2();
		
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUploadfile(upload_file);
			
			introduceAcademyMemberBean.setA_mainImg(file_name);
		}
		if(upload_file2.getSize() > 0) {
			String file_name2 = saveUploadfile(upload_file2);
			
			introduceAcademyMemberBean.setA_file(file_name2);
		}
	
		academyMemberDAO.insertAcademyIntroduce(introduceAcademyMemberBean);
	}
	
	public AcademyMemberBean infoIntroduce(AcademyMemberBean infoIntroduce) {
		
		if((academyMemberDAO.infoIntroduce(loginAcademyMemberBean.getA_memberNo()) !=null)){
		
	 	AcademyMemberBean infoIntroduce2 = academyMemberDAO.infoIntroduce(loginAcademyMemberBean.getA_memberNo());
		infoIntroduce.setA_memberNo(infoIntroduce2.getA_memberNo());
		infoIntroduce.setA_introduce(infoIntroduce2.getA_introduce());
		infoIntroduce.setA_mainImg(infoIntroduce2.getA_mainImg());
		infoIntroduce.setA_file(infoIntroduce2.getA_file());
		infoIntroduce.setA_gradeMin(infoIntroduce2.getA_gradeMin());
		infoIntroduce.setA_gradeMax(infoIntroduce2.getA_gradeMax());
		infoIntroduce.setA_shuttle(infoIntroduce2.getA_shuttle());
		infoIntroduce.setA_openTime(infoIntroduce2.getA_openTime());
		infoIntroduce.setA_closeTime(infoIntroduce2.getA_closeTime());
	 	
		return infoIntroduce;
		}
	
		return infoIntroduce;
	}
	
	public void modifyAcademyIntroduce(AcademyMemberBean infoIntroduce) {
		
		MultipartFile upload_file = infoIntroduce.getUpload_file();
		MultipartFile upload_file2 = infoIntroduce.getUpload_file2();
		
		if(upload_file.getSize() > 0) {
			String file_name = saveUploadfile(upload_file);
			
			infoIntroduce.setA_mainImg(file_name);
		}
		if(upload_file2.getSize() > 0) {
			String file_name2 = saveUploadfile(upload_file2);
			
			infoIntroduce.setA_file(file_name2);
		}
		academyMemberDAO.modifyAcademyIntroduce(infoIntroduce);
	}
	
	public void deleteAcademyIntroduce(int a_memberNo) {
		academyMemberDAO.deleteAcademyIntroduce(a_memberNo);
	}
	
	//관리자 학원 목록 페이지
		public List<AcademyMemberBean> getAdAcademyList(){
			return academyMemberDAO.getAdAcademyList();	
		}
		//총학원수
		public int getAdminAcaCnt(AcademyMemberBean myAdminAcaBean) {
			return academyMemberDAO.getAdminAcaCnt(myAdminAcaBean);
		}
}
