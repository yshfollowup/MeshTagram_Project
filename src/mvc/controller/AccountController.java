package mvc.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.model.AccountDTO;
import mvc.model.FollowDTO;
import mvc.service.AccountDAO;
import mvc.service.FollowDAO;
import mvc.service.MessengerDAO;
import mvc.service.PostDAO;
import mvc.service.ReplyDAO;
import mvc.service.SearchDAO;
import mvc.service.SeperatorService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired
	FollowDAO fDAO;
	@Autowired
	AccountDAO aDAO;
	@Autowired
	PostDAO pDAO;
	@Autowired
	ReplyDAO rDAO;
	@Autowired
	MessengerDAO mDAO;
	@Autowired
	SearchDAO sDAO;
	@Autowired
	SeperatorService ss;

	// 회원가입 페이지
	@RequestMapping("/join.do")
	public String registerHandle() {

		return "insta_join";
	}

	// 로그인 페이지
	@RequestMapping({ "/loginPage.do", "/index.do" })
	public String loginPageHandle() {

		return "insta_login";
	}

	// 접속
	@RequestMapping(path = "/login.do", method = RequestMethod.POST)
	public String loginHandle(@RequestParam MultiValueMap<String, String> vmap, ModelMap modelMap,
			HttpServletResponse resp, HttpSession session) {

		String id = vmap.getFirst("id");
		String pass = vmap.getFirst("pass");
		System.out.println("[SERVER]: received id & pass: " + id + ", " + pass);
		AccountDTO aDTO = aDAO.selectOneAccount(id, pass);
		if (aDTO == null) {
			System.out.println("[SERVER]: login failed");
			return "redirect:/account/loginPage.do";
		}
		System.out.println("[SERVER]: login success");

		// 계정 정보
		modelMap.put("aDTO", aDTO);

		// 현재 사용자 id 쿠키 등록, 이전 사용자의 쿠키는 지워야함.
		Cookie cookie = null;

		/*
		 * if (setId != null) { System.out.println("[SERVER]: cookie exist"); } else {
		 * System.out.println("[SERVER]: cookie create"); cookie = new Cookie("setId",
		 * id); }
		 */
		cookie = new Cookie("setId", id);
		cookie.setPath("/");
		cookie.setMaxAge(60 * 60 * 24);
		resp.addCookie(cookie);

		// 이전에 쓴 모든 게시물 정보
		/*
		 * List<Map> allPost = pDAO.findAllPost(); if(allPost != null)
		 * modelMap.put("allPost", allPost); System.out.println("모든 게시물"+allPost);
		 */

		// ==================================================================
		String setId = id;
		List<Map> eachResult = null;

		session.setAttribute("setId", setId);
		modelMap.addAttribute("className", this.getClass());

		List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(setId);
		// 맞팔되어있는 친구 목록 뽑은 뒤 그에 대한 게시물 보냄(1순위)
		for (AccountDTO eachfollow : eachOtherList) {
			String eachFollowid = eachfollow.getId();
			if (id != null) {
				eachResult = pDAO.findPostById(eachFollowid);
				// modelMap.addAttribute("eachResult", eachResult);
				// System.out.println(eachResult.size()+"...eachResult"+eachResult);
			}
		}
		// =========================================================================
		List<List<String>> list = ss.sendSeperInfo();
		List<String> idList=null;
		List<String> tagList=null;
		List<String> annoList=null;
		//System.out.println(list+"으으으으");
		if(!list.isEmpty()) {
			idList = list.get(0);
			tagList = list.get(1);
			annoList = list.get(2);
		}
		// 관심사(hashtag)가 같은 사람을 뽑아 그에 대한 게시물 보냄(2순위)
		List<Map> tagResult = null;
		if(tagList !=null) {
			for (String tag : tagList) {
				if (tag != null) {
					tagResult = pDAO.findPostByTag(tag);
					if(tagResult !=null && eachResult !=null) {
						for(int i=0; i<tagResult.size(); i++) {
							eachResult.add(tagResult.get(i));
						}
						
					}
				}
			}
			
		}

		List<Map> myresult = pDAO.findPostById(setId);

		//System.out.println("첫 게시판" + myresult);
		if (eachResult != null) {
			for(int i=0; i<myresult.size(); i++) {
				
				eachResult.add(myresult.get(i));
			}
		} else {
			eachResult = myresult;
		}

		//modelMap.addAttribute("ids", idList);
		//System.out.println("ids" + idList);
		//modelMap.addAttribute("tags", tagList);
		//eachResult.add((Map) tagList);
		//System.out.println("tags" + tagList);
		//modelMap.addAttribute("annos", annoList);
		//eachResult.add((Map) annoList);
		//System.out.println("annos" + annoList);
		// ==================================================================
		List<AccountDTO> topFollowerList = aDAO.selectTop5Account(setId);

		// 팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
		List<Map> topResult = null;
		for (AccountDTO top : topFollowerList) {
			// System.out.println(top.getId());
			String[] tops = top.getId().split(",");
			if (tops.length != 0) {
				for (String s : tops) {
					topResult = pDAO.findPostById(s);
					for(int i=0; i<topResult.size(); i++) {
						eachResult.add(topResult.get(i));
					}
				}
			}
		}
		
		
		if (topResult != null && eachResult != null) {

			for (int i = 0; i < topResult.size(); i++) {
					if (tagResult.size() < i) {

					} else {

							// System.out.println("비교값이 들어갔다. 사이즈="+topResult.size()+topResult.get(i));
							eachResult.add(topResult.get(i));
							// modelMap.addAttribute("eachResult", topResult.get(i));

				}

			}
		}

		// ============================================================
		List<FollowDTO> followerList = fDAO.selectFollwer(setId); // 나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId); // 내가 팔로잉
		
		// 나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
		List<Map> followerResult = null;
		List<Map> followingResult = null;
		for (FollowDTO follower : followerList) {
			for (FollowDTO following : followingList) {
				String myFollower = follower.getOwner();
				String followingMe = following.getTarget();
				if (myFollower != null || followingMe != null) {
					followerResult = pDAO.findPostById(myFollower);
					followingResult = pDAO.findPostById(followingMe);
					// modelMap.addAttribute("followerResult", followerResult);
					// modelMap.addAttribute("followingResult", followingResult);
					// System.out.println(followerResult.size()+" / "+followingResult.size());
				}
				if (followerResult.size() > 0 && eachResult != null) {
					for (int i = 0; i < followerResult.size(); i++) {
						if(eachResult.size() > 0) {
							
								// System.out.println("비교값이 들어갔다.
								// 사이즈="+followerResult.size()+followerResult.get(i));
								eachResult.add(followerResult.get(i));
								// modelMap.addAttribute("eachResult", followerResult.get(i));
								
						}
					}
				}
				if (followingResult.size() > 0) {
					for (int i = 0; i < followingResult.size(); i++) {
						if(eachResult !=null) {
							
								// System.out.println("비교값이 들어갔다.
								// 사이즈="+followingResult.size()+followingResult.get(i));
								eachResult.add(followingResult.get(i));
								// modelMap.addAttribute("eachResult", followingResult.get(i));
								
						}
					}
				}
			}

		}

		List<Map> resultList=new ArrayList<Map>();
		for(int i =0; i< eachResult.size(); i++) {
			if(!resultList.contains(eachResult.get(i))) {
				resultList.add(eachResult.get(i));
			}
		}
		modelMap.put("eachResult", resultList);
		// ==================================================================
		// 이전에 대화한 모든 메시지
		/*
		 * List<Map> allMessage = mDAO.findAllMessage(); if(allMessage != null)
		 * modelMap.put("allMessage", allMessage);
		 */

		System.out.println("[SERVER]: login success");
		return "insta_main";
	}

	// 접속
	@RequestMapping(path = "/login.do", method = RequestMethod.GET)
	public String logingetHandle(ModelMap modelMap, @CookieValue(name = "setId", required = false) String setId) {
		System.out.println("[SERVER]: login success" + setId);
		String id = setId;

		// 계정 정보
		AccountDTO aDTO = aDAO.selectOneAccountre(id);
		modelMap.put("aDTO", aDTO);

		// ==================================================================
		List<Map> eachResult = null;

		List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(setId);
		// 맞팔되어있는 친구 목록 뽑은 뒤 그에 대한 게시물 보냄(1순위)
		for (AccountDTO eachfollow : eachOtherList) {
			String eachFollowid = eachfollow.getId();
			if (id != null) {
				eachResult = pDAO.findPostById(eachFollowid);
				// modelMap.addAttribute("eachResult", eachResult);
				// System.out.println(eachResult.size()+"...eachResult"+eachResult);
			}
		}
		// =========================================================================
		List<List<String>> list = ss.sendSeperInfo();
		List<String> idList=null;
		List<String> tagList=null;
		List<String> annoList=null;
		//System.out.println(list+"으으으으");
		if(!list.isEmpty()) {
			idList = list.get(0);
			tagList = list.get(1);
			annoList = list.get(2);
		}
		// 관심사(hashtag)가 같은 사람을 뽑아 그에 대한 게시물 보냄(2순위)
		List<Map> tagResult = null;
		if(tagList !=null) {
			for (String tag : tagList) {
				if (tag != null) {
					tagResult = pDAO.findPostByTag(tag);
					if(tagResult !=null && eachResult !=null) {
						for(int i=0; i<tagResult.size(); i++) {
							eachResult.add(tagResult.get(i));
						}
						
					}
				}
			}
			
		}

		List<Map> myresult = pDAO.findPostById(setId);

		//System.out.println("첫 게시판" + myresult);
		if (eachResult != null) {
			for(int i=0; i<myresult.size(); i++) {
				
				eachResult.add(myresult.get(i));
			}
		} else {
			eachResult = myresult;
		}

		//modelMap.addAttribute("ids", idList);
		//System.out.println("ids" + idList);
		//modelMap.addAttribute("tags", tagList);
		//eachResult.add((Map) tagList);
		//System.out.println("tags" + tagList);
		//modelMap.addAttribute("annos", annoList);
		//eachResult.add((Map) annoList);
		//System.out.println("annos" + annoList);
		// ==================================================================
		List<AccountDTO> topFollowerList = aDAO.selectTop5Account(setId);

		// 팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
		List<Map> topResult = null;
		for (AccountDTO top : topFollowerList) {
			// System.out.println(top.getId());
			String[] tops = top.getId().split(",");
			if (tops.length != 0) {
				for (String s : tops) {
					topResult = pDAO.findPostById(s);
					for(int i=0; i<topResult.size(); i++) {
						eachResult.add(topResult.get(i));
					}
				}
			}
		}
		
		
		if (topResult != null && eachResult != null) {

			for (int i = 0; i < topResult.size(); i++) {
					if (tagResult.size() < i) {

					} else {

							// System.out.println("비교값이 들어갔다. 사이즈="+topResult.size()+topResult.get(i));
							eachResult.add(topResult.get(i));
							// modelMap.addAttribute("eachResult", topResult.get(i));

				}

			}
		}

		// ============================================================
		List<FollowDTO> followerList = fDAO.selectFollwer(setId); // 나를 팔로우
		List<FollowDTO> followingList = fDAO.selectFollwing(setId); // 내가 팔로잉
		
		// 나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
		List<Map> followerResult = null;
		List<Map> followingResult = null;
		for (FollowDTO follower : followerList) {
			for (FollowDTO following : followingList) {
				String myFollower = follower.getOwner();
				String followingMe = following.getTarget();
				if (myFollower != null || followingMe != null) {
					followerResult = pDAO.findPostById(myFollower);
					followingResult = pDAO.findPostById(followingMe);
					// modelMap.addAttribute("followerResult", followerResult);
					// modelMap.addAttribute("followingResult", followingResult);
					// System.out.println(followerResult.size()+" / "+followingResult.size());
				}
				if (followerResult.size() > 0 && eachResult != null) {
					for (int i = 0; i < followerResult.size(); i++) {
						if(eachResult.size() > 0) {
							
								// System.out.println("비교값이 들어갔다.
								// 사이즈="+followerResult.size()+followerResult.get(i));
								eachResult.add(followerResult.get(i));
								// modelMap.addAttribute("eachResult", followerResult.get(i));
								
						}
					}
				}
				if (followingResult.size() > 0) {
					for (int i = 0; i < followingResult.size(); i++) {
						if(eachResult !=null) {
							
								// System.out.println("비교값이 들어갔다.
								// 사이즈="+followingResult.size()+followingResult.get(i));
								eachResult.add(followingResult.get(i));
								// modelMap.addAttribute("eachResult", followingResult.get(i));
								
						}
					}
				}
			}

		}

		List<Map> resultList=new ArrayList<Map>();
		for(int i =0; i< eachResult.size(); i++) {
			if(!resultList.contains(eachResult.get(i))) {
				resultList.add(eachResult.get(i));
			}
		}
		modelMap.put("eachResult", resultList);
		// ==================================================================
		/*
		 * //이전에 대화한 모든 메시지 List<Map> allMessage = mDAO.findAllMessage(); if(allMessage
		 * != null) modelMap.put("allMessage", allMessage);
		 */

		System.out.println("[SERVER]: login success");
		return "insta_main";
	}

	// 업로드 페이지
	@RequestMapping("/upload.do")
	public String uploadHandle() {

		return "insta_upload";
	}

	// 로그아웃
	@RequestMapping("/logout.do")
	public String lougoutHandle(HttpServletResponse resp, HttpServletRequest req,HttpSession se) {
		Cookie[] cookies = req.getCookies();

		if (cookies != null) {

			for (int i = 0; i < cookies.length; i++) {
				if (cookies[i].getName().equals("setId")) {
					System.out.println(cookies[i].getName());
					cookies[i].setPath("/"); // 유효시간을 0으로 설정
					cookies[i].setMaxAge(0);
					resp.addCookie(cookies[i]); // 응답 헤더에 추가
				}

			}

		}
		se.invalidate();
		
		System.out.println("쿠키값 삭제");
		return "insta_login";
	}
}
