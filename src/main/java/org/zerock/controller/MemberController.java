package org.zerock.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.MemberVO;
import org.zerock.service.MemberService;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
public class MemberController {
	@Autowired
	private MemberService memberService;

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session, Model model) {
		if (vo.getId() == null || vo.getId().equals("")) {
			model.addAttribute("idErrorMessage", "아이디를 입력해주세요.");
			return "user/login";
		}

		if (vo.getPassword() == null || vo.getPassword().equals("")) {
			model.addAttribute("passwordErrorMessage", "비밀번호를 입력해주세요.");
			return "user/login";
		}

		MemberVO user = memberService.login(vo);

		if (user != null) {
			session.setAttribute("userName", user.getName());
			session.setAttribute("userId", user.getId());
			 System.out.println("로그인 성공: " + user.getId()); // 로그인 성공 로그
			return "redirect:main.do";
		} else {
			model.addAttribute("errorMessage", "아이디 또는 비밀번호가 올바르지 않습니다.");
			return "user/login";
		}
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String showLoginPage() {
		return "user/login";
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:main.do";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.GET)
	public String showJoinPage() {
		return "user/join";
	}

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String join(MemberVO vo, Model model) {
		if (vo.getId() == null || vo.getId().equals("")) {
			model.addAttribute("idErrorMessage", "아이디를 입력해주세요.");
			return "user/join";
		}

		if (vo.getPassword() == null || vo.getPassword().equals("")) {
			model.addAttribute("passwordErrorMessage", "비밀번호를 입력해주세요.");
			return "user/join";
		}

		if (vo.getName() == null || vo.getName().equals("")) {
			model.addAttribute("nameErrorMessage", "이름을 입력해주세요.");
			return "user/join";
		}

		if (vo.getEmail() == null || vo.getEmail().equals("")) {
			model.addAttribute("emailErrorMessage", "이메일을 입력해주세요.");
			return "user/join";
		}

		if (vo.getPhone() == null || vo.getPhone().equals("")) {
			model.addAttribute("phoneErrorMessage", "전화번호를 입력해주세요.");
			return "user/join";
		}
		memberService.insertMember(vo);
		
		model.addAttribute("registSuccess", Boolean.TRUE);
		return "user/login";
	}

	 @RequestMapping(value = "updateMember.do", method = RequestMethod.GET)
	    public String showUpdateMemberPage(@RequestParam(value = "id", required = false) String id, HttpSession session, Model model) {
	        if (id == null || id.isEmpty()) {
	            id = (String) session.getAttribute("userId");
	            if (id == null || id.isEmpty()) {
	                model.addAttribute("message", "회원 ID가 필요합니다.");
	                return "redirect:/login.do"; 
	            }
	        }
	        MemberVO member = memberService.getMember(id);
	        model.addAttribute("member", member);
	        return "user/update";
	    }

	    @RequestMapping(value = "updateMember.do", method = RequestMethod.POST)
	    public String updateMember(MemberVO vo, HttpSession session, Model model) {
	        if (vo.getId() == null || vo.getId().isEmpty()) {
	            vo.setId((String) session.getAttribute("userId"));
	            if (vo.getId() == null || vo.getId().isEmpty()) {
	                model.addAttribute("message", "회원 ID가 필요합니다.");
	                return "redirect:/login.do"; 
	            }
	        }
	        memberService.updateMember(vo);
	        model.addAttribute("message", "회원정보가 성공적으로 수정되었습니다.");
	        return "redirect:/main.do";
	    }
	
	 
	@RequestMapping(value = "/deleteMember.do", method = RequestMethod.POST)
	public String deleteMember(@RequestParam("id") String id, HttpSession session) {
		memberService.deleteMember(id);
		session.invalidate();
		return "redirect:/main.do";
	}

	@RequestMapping(value = "/deleteMember.do", method = RequestMethod.GET)
	public String showDeleteMemberPage(@RequestParam("id") String id, Model model) {
		MemberVO member = memberService.getMember(id);
		model.addAttribute("member", member);
		return "user/deleteMember";
	}

	@RequestMapping(value = "/getMemberList.do", method = RequestMethod.GET)
	public String getMemberList(Model model) {
		List<MemberVO> memberList = memberService.getMemberList();
		model.addAttribute("memberList", memberList);
		return "user/getMemberList";
	}

	@RequestMapping(value = "/getMember.do", method = RequestMethod.GET)
	public String getMember(@RequestParam("id") String id, Model model) {
		MemberVO member = memberService.getMember(id);
		model.addAttribute("member", member);
		return "user/getMember";
	}
}
