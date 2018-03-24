package mvc.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
		//회원가입 페이지
	@RequestMapping("/join.do")
	public String registerHandle() {
		
		return "insta_join";
	}
		//로그인 페이지
	@RequestMapping("/loginPage.do")
	public String loginPageHandle() {
		
		return "insta_login";
	}
	//접속
	@RequestMapping(path="/login.do", method=RequestMethod.POST)
	public String loginHandle(@RequestParam MultiValueMap<String, String> vmap, ModelMap modelMap,
		HttpServletResponse resp, @CookieValue(name="setId", required=false) String setId) {
		String id = vmap.getFirst("id");
		String pass = vmap.getFirst("pass");
		System.out.println("[SERVER]: received id & pass: "+id+", "+pass);
		AccountDTO aDTO = aDAO.selectOneAccount(id, pass);
		if (aDTO == null) {
			System.out.println("[SERVER]: login failed");
			return "insta_login";
		}
		System.out.println("[SERVER]: login success");
		
		//계정 정보
		modelMap.put("aDTO", aDTO);
		
		//현재 사용자 id 쿠키 등록, 이전 사용자의 쿠키는 지워야함.
		Cookie cookie= null;
		
		if (setId != null) {
			System.out.println("[SERVER]: cookie exist");
			cookie = new Cookie("setId", id);
		} else {
			System.out.println("[SERVER]: cookie create");
			cookie = new Cookie("setId", id);
		}

		cookie.setPath("/");
		cookie.setMaxAge(60*60*24);
		resp.addCookie(cookie);

		//이전에 쓴 모든 게시물 정보
	/*	List<Map> allPost = pDAO.findAllPost();
		if(allPost != null) 
		modelMap.put("allPost", allPost);
		System.out.println("모든 게시물"+allPost);*/
		
		//==================================================================
		List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(setId);
		//맞팔되어있는 친구 목록 뽑은 뒤 그에 대한 게시물 보냄(1순위)
		for(AccountDTO eachfollow : eachOtherList) {
			String eachFollowid = eachfollow.getId();
			if(id != null) {
				List<Map> eachResult = pDAO.findPostById(eachFollowid);
				modelMap.addAttribute("eachResult", eachResult);
				System.out.println(eachResult.size()+"...eachResult"+eachResult);
				for(int i=0; i<eachResult.size(); i++) {
					Object object=eachResult.get(i).get("_id");
					String obj=object.toString();
					modelMap.addAttribute("boardid", obj);
					System.out.println(obj+"1순위 오프젝트");

				}
			}
		}
		//=========================================================================
			List<List<String>> list = ss.sendSeperInfo();
			List<String> idList = list.get(0);
			List<String> tagList = list.get(1);
			List<String> annoList = list.get(2);
			//관심사(hashtag)가 같은 사람을 뽑아 그에 대한 게시물 보냄(2순위)
			for(String tag : tagList) {
				if(tag != null) {
					List<Map> tagResult = pDAO.findPostByTag(tag);
					modelMap.addAttribute("tagResult", tagResult);
					System.out.println(tagResult.size()+"...tagResult"+tagResult);
					for(int i=0; i<tagResult.size(); i++) {
						Object object=tagResult.get(i).get("_id");
						String obj=object.toString();
						modelMap.addAttribute("boardid", obj);
						System.out.println(obj+"2순위 오프젝트");

					}
					
				}
			}
			
			modelMap.addAttribute("ids", idList);
			System.out.println("ids"+idList);
			modelMap.addAttribute("tags", tagList);
			System.out.println("tags"+tagList);
			modelMap.addAttribute("annos", annoList);
			System.out.println("annos"+annoList);
			//==================================================================
			List<AccountDTO> topFollowerList = aDAO.selectTop5Account(setId);
			
			//팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
			for(AccountDTO top : topFollowerList) {
				System.out.println(top.getId());
				String[] tops = top.getId().split(",");
				if(tops.length != 0) {
					for(String s : tops) {
						List<Map> topResult = pDAO.findPostById(s);
						modelMap.addAttribute("top5Result", topResult);
						System.out.println(topResult.size()+"...top5"+topResult);
						for(int i=0; i<topResult.size(); i++) {
							Object object=topResult.get(i).get("_id");
							String obj=object.toString();
							modelMap.addAttribute("boardid", obj);
							System.out.println(obj+"3순위 오프젝트");

						}
					}				
				}
			}
			//============================================================
			List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
			List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
			
			//나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
			for(FollowDTO follower : followerList) {
				for(FollowDTO following : followingList) {
					String myFollower = follower.getOwner();
					String followingMe = following.getTarget();
					if(myFollower != null || followingMe != null) {
						List<Map> followerResult = pDAO.findPostById(myFollower);
						List<Map> followingResult = pDAO.findPostById(followingMe);
						modelMap.addAttribute("followerResult", followerResult);
						modelMap.addAttribute("followingResult", followingResult);
						System.out.println(followerResult.size()+" / "+followingResult.size());		
						for(int i=0; i<followerResult.size(); i++) {
							Object object=followerResult.get(i).get("_id");
							String obj=object.toString();
							modelMap.addAttribute("boardid", obj);
							System.out.println(obj+"4순위 오프젝트");

						}
						for(int i=0; i<followingResult.size(); i++) {
							Object object=followingResult.get(i).get("_id");
							String obj=object.toString();
							modelMap.addAttribute("boardid", obj);
							System.out.println(obj+"5순위 오프젝트");

						}
					}
				}
			}
		
		//==================================================================
		//이전에 대화한 모든 메시지
		List<Map> allMessage = mDAO.findAllMessage();
		if(allMessage != null)
			modelMap.put("allMessage", allMessage);
		
		System.out.println("[SERVER]: login success");
		return "insta_main";
	}
	//접속
	@RequestMapping(path="/login.do", method=RequestMethod.GET)
	public String logingetHandle(ModelMap modelMap, @CookieValue(name="setId", required=false) String setId) {
		System.out.println("[SERVER]: login success"+setId);
		String id = setId;
		//계정 정보
		AccountDTO aDTO = aDAO.selectOneAccountre(id);
		modelMap.put("aDTO", aDTO);
		
		//이전에 쓴 모든 게시물 정보
/*		List<Map> allPost = pDAO.findAllPost();
		if(allPost != null) 
			modelMap.put("allPost", allPost);
		System.out.println("모든 게시물"+allPost);*/
		//==================================================================
				List<AccountDTO> eachOtherList = aDAO.selectFollowEachOther(setId);
				//맞팔되어있는 친구 목록 뽑은 뒤 그에 대한 게시물 보냄(1순위)
				for(AccountDTO eachfollow : eachOtherList) {
					String eachFollowid = eachfollow.getId();
					if(id != null) {
						List<Map> eachResult = pDAO.findPostById(eachFollowid);
						modelMap.addAttribute("eachResult", eachResult);
						System.out.println(eachResult.size()+"...eachResult"+eachResult);
						for(int i=0; i<eachResult.size(); i++) {
							Object object=eachResult.get(i).get("_id");
							String obj=object.toString();
							modelMap.addAttribute("boardida", obj);
							System.out.println(obj+"1순위 오프젝트");

						}
					}
				}
				//=========================================================================
					List<List<String>> list = ss.sendSeperInfo();
					List<String> idList = list.get(0);
					List<String> tagList = list.get(1);
					List<String> annoList = list.get(2);
					//관심사(hashtag)가 같은 사람을 뽑아 그에 대한 게시물 보냄(2순위)
					for(String tag : tagList) {
						if(tag != null) {
							List<Map> tagResult = pDAO.findPostByTag(tag);
							modelMap.addAttribute("tagResult", tagResult);
							System.out.println(tagResult.size()+"...tagResult"+tagResult);
							for(int i=0; i<tagResult.size(); i++) {
								Object object=tagResult.get(i).get("_id");
								String obj=object.toString();
								modelMap.addAttribute("boardidb", obj);
								System.out.println(obj+"2순위 오프젝트");

							}
							
						}
					}
					
					modelMap.addAttribute("ids", idList);
					System.out.println("ids"+idList);
					modelMap.addAttribute("tags", tagList);
					System.out.println("tags"+tagList);
					modelMap.addAttribute("annos", annoList);
					System.out.println("annos"+annoList);
					//==================================================================
					List<AccountDTO> topFollowerList = aDAO.selectTop5Account(setId);
					
					//팔로워 수 많은 순대로 뽑고 그에 대한 게시물 보냄(3순위)
					for(AccountDTO top : topFollowerList) {
						System.out.println(top.getId());
						String[] tops = top.getId().split(",");
						if(tops.length != 0) {
							for(String s : tops) {
								List<Map> topResult = pDAO.findPostById(s);
								modelMap.addAttribute("top5Result", topResult);
								System.out.println(topResult.size()+"...top5"+topResult);
								for(int i=0; i<topResult.size(); i++) {
									Object object=topResult.get(i).get("_id");
									String obj=object.toString();
									modelMap.addAttribute("boardidc", obj);
									System.out.println(obj+"3순위 오프젝트");

								}
							}				
						}
					}
					//============================================================
					List<FollowDTO> followerList = fDAO.selectFollwer(setId);	//나를 팔로우
					List<FollowDTO> followingList = fDAO.selectFollwing(setId);	//내가 팔로잉
					
					//나를 팔로우하거나 내가 팔로우한 목록 뽑고 그에 대한 게시물 보냄(4순위)
					for(FollowDTO follower : followerList) {
						for(FollowDTO following : followingList) {
							String myFollower = follower.getOwner();
							String followingMe = following.getTarget();
							if(myFollower != null || followingMe != null) {
								List<Map> followerResult = pDAO.findPostById(myFollower);
								List<Map> followingResult = pDAO.findPostById(followingMe);
								modelMap.addAttribute("followerResult", followerResult);
								modelMap.addAttribute("followingResult", followingResult);
								System.out.println(followerResult.size()+" / "+followingResult.size());		
								for(int i=0; i<followerResult.size(); i++) {
									Object object=followerResult.get(i).get("_id");
									String obj=object.toString();
									modelMap.addAttribute("boardidd", obj);
									System.out.println(obj+"4순위 오프젝트");

								}
								for(int i=0; i<followingResult.size(); i++) {
									Object object=followingResult.get(i).get("_id");
									String obj=object.toString();
									modelMap.addAttribute("boardide", obj);
									System.out.println(obj+"5순위 오프젝트");

								}
							}
						}
					}
				
				//==================================================================
		//이전에 대화한 모든 메시지
		List<Map> allMessage = mDAO.findAllMessage();
		if(allMessage != null)
			modelMap.put("allMessage", allMessage);
		
		System.out.println("[SERVER]: login success");
		return "insta_main";
	}
	

	
	
	
	//게시물 업로드 페이지
	@RequestMapping("/upload.do")
	public String uploadHandle() {
		
		return "insta_upload";
	}
}
