package kr.inflearn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.inflearn.model.BoardVO;
import kr.inflearn.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService service;
	
	@RequestMapping("/list.do")
	public String list(Model model) {
		List<BoardVO> list = service.getList();
		model.addAttribute("list",list);
		return "boardList";
	}
	
	@RequestMapping(value= "/register.do", method = RequestMethod.GET )
	public String register() {
		
		return "register"; // 게시물 등록 화면
	}
	
	@RequestMapping(value= "/register.do", method = RequestMethod.POST )
	public String registerPost(BoardVO board) {
		service.register(board);
		return "redirect:/list.do"; // 게시물로 리다이렉트
	}
	
	@RequestMapping("/get.do")
	public String get(@RequestParam("bno")int bno, Model model) {
		BoardVO board = service.get(bno,get);
		model.addAttribute("board",board);
		return "get";
	}
	
	@RequestMapping(value="/modify.do" , method = RequestMethod.GET)
	public String modify(@RequestParam("bno") int bno , Model model) {
		BoardVO board = service.get(bno,"modify");
		model.addAttribute("board",board);
		return "modify";
	}
	
	@RequestMapping(value="/modify.do" , method = RequestMethod.POST)
	public String modify(BoardVO board , Model model) {
		service.modify(board);
		return "redirect:/get.do?bno="+board.getIdx();
	}
	
	@RequestMapping(value="/remove.do" , method = RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno) {
		service.remove(bno);
		return "redirect:/list.do";
	}
}
