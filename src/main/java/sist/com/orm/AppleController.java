package sist.com.orm;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.AfterDomainEventPublication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.portlet.ModelAndView;

import dao.MemberDao;
import model.MemberBean;
import model.OfficeBean;
import model.QnaBean;
import model.RentCarBean;
import model.RentListBean;


 

@Controller
public class AppleController {
	@Autowired
	private MemberDao dao;
	
 	
	@RequestMapping(value="loginPro.do")
	public String loginProcess(String userId, String userpassword,HttpSession session,Model model) {//아이디 비밀번호가 정보와 일치하는지 확인
			
			if(dao.memberIdCheck(userId,userpassword)) {
				session.setAttribute("userId", userId);
				return "redirect:loginCheck.do";
			}else {
				 
				/*model.addAttribute("loginFail","정보가 일치하지 않습니다");*/
				
				return "redirect:/SIST/sub/login.jsp";
			}
	} 
	 
	@RequestMapping(value="loginCheck.do")
	public String loginChecksession(String userId,HttpSession session,Model model) {//레벨 확인 후 관리자,회원 구분
	 
		MemberBean bean = dao.findlevel((String) session.getAttribute("userId"));
		if(Integer.parseInt(bean.getMlevel())==0) {
			 return "/SIST/adminIndex";
			 
		}else if(Integer.parseInt(bean.getMlevel())==1) {
			 return "/SIST/index";
			 
		}
		return null;			
	}
	 
	@RequestMapping(value="idCheck.do")
	public String idCheckPro(HttpSession session, String memid) {
 
		System.out.println("IDIDIDIDID~~~~~~: " + memid);
		boolean check = dao.IdCheck(memid);
		 System.out.println("CHECK"+check);
	    return  "check";
		 
	}
	
	 @RequestMapping(value="logoutPro.do")
	 public String logoutPro(HttpServletRequest request) {//로그아웃 = 로그인 후 생성된 세션 제거
		
		 HttpSession session = request.getSession();
		 session.invalidate();
		 return "/SIST/index";
	 }
	
	@RequestMapping(value="indexlogin.do")
	public String login() {
		return "redirect:/SIST/sub/login.jsp";
	}
	
	@RequestMapping(value="joinRentcar.do")
	public String joinmember() {
		
		return "redirect:/SIST/sub/joinRentcar.jsp";
	}
	
	
	@RequestMapping(value="memberInsert.do")
	public String insertMember(MemberBean bean,HttpSession session,Model model,String userId,ModelAndView mav) {
 
		bean.setMlevel("1");
		dao.insertMember(bean);
		model.addAttribute("userId",bean.getMemid());
		 
		return "SIST/sub/memberSuccess";
	}
	
	@RequestMapping(value="searchAdress.do")
	public String serarchAdress(String dong,Model model) {
		/* List<ZipBean>list=dong!=null?MemberDao.selectZipCode(dong):null;*/
		//dao.selectZipCode(dong);
 	model.addAttribute("dongList", dao.selectZipCode(dong)); 
		return "SIST/sub/address";
	}
	
	@RequestMapping(value = "myPage.do")
	public String goMypage(HttpServletRequest request, Model model, MemberBean bean) {
		HttpSession session = request.getSession();

		String idsession = session.getAttribute("userId").toString();
		MemberBean memInfo = new MemberBean();
		memInfo = dao.memberInfo(idsession);

		model.addAttribute("mypageId", memInfo.getMemid());
		model.addAttribute("mypagePw", memInfo.getMempw());
		model.addAttribute("mypageName", memInfo.getMname());
		model.addAttribute("mypageMail", memInfo.getMemail());

		String data = memInfo.getMadress();
		String[] adress = data.split("/");
		String adress1 = adress[0];
		String adress2 = adress[1];
		String adress3 = adress[2];
		model.addAttribute("mypageAdress1", adress1);
		model.addAttribute("mypageAdress2", adress2);
		model.addAttribute("mypageAdress3", adress3);

		model.addAttribute("mypageTel",memInfo.getMemtel());
 
		return "SIST/sub/myPage";

	}
	
	@RequestMapping(value="myPageReserve.do")
	public String goMyPageReserve(HttpSession session,Model model,String userId) {
	MemberBean mem = dao.findNo((String) session.getAttribute("userId"));
		List<RentListBean> list=dao.myPage_reserve(mem);
		model.addAttribute("myPageReserveList",list);
		
		return "SIST/sub/myPage_Reserve";
	}
	
	@RequestMapping(value="myQna.do")
	public String myQnaPro(Model model,HttpSession session,String userId) {
		MemberBean mem = dao.findNo((String) session.getAttribute("userId"));
		List<QnaBean> list = dao.myQnAselect(mem);
		model.addAttribute("myQnaList",list);
		
		return "SIST/sub/myQnA";
	}
	
	@RequestMapping(value="memberList.do")
	public String memberListPro(Model model) {
		List<MemberBean> list = null;
		HashMap<String, Object> map = new HashMap<String, Object>();
		list = dao.selectmember(map);
		model.addAttribute("selectMember",list);
		return "SIST/admin/member";
	}
	
 
	
	@RequestMapping(value="memberListDelete.do")
	public String memberListDelPro(int memno) {
		dao.deleteMemberList(memno);
		return "redirect:memberList.do";
	}
	
	@RequestMapping(value="goOffice.do")
	public String rentCarOffice(Model model) {
		List<OfficeBean> list = null;
		HashMap<String, Object> map = new HashMap<String, Object>();
		dao.selectOffice(map);
		
		list= dao.selectOffice(map);
		model.addAttribute("officeList",list);
		
		return "/SIST/admin/office";
	}
	
}








