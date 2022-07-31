package com.mycompany.myapp.board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/board")
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping(value ="/view/{id}", method = RequestMethod.GET)
	public String boardView(@PathVariable("id") int id, Model model) {
		model.addAttribute("view",boardService.getBoard(id));
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("u", boardVO);
		return "view";
	}
	
	@RequestMapping(value ="/list", method = RequestMethod.GET)
	public String boardlist(Model model) {
		model.addAttribute("list",boardService.getBoardList());
		return "list";
	}
	@RequestMapping(value = "/list_cat1", method = RequestMethod.GET)
	public String boardlist_cat1(Model model) {
		model.addAttribute("list", boardService.getBoardList_cat(0));
		return "list_cat1";
	}
	@RequestMapping(value ="/add", method = RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value ="/addok", method = RequestMethod.POST)
	public String addPostOK(BoardVO vo) {
		if(boardService.insertBoard(vo) == 0) 
			System.out.println("데이터 추가 실패 ");
		else
			System.out.println("데이터 추가 성공!!");
		return "redirect:list";
	}
	
	@RequestMapping(value ="/editform/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		BoardVO boardVO = boardService.getBoard(id);
		model.addAttribute("u", boardVO);
		return "editform";
	}
	
	@RequestMapping(value ="/editok", method = RequestMethod.POST)
	public String editPostOk(BoardVO vo) {
		int i = boardService.updateBoard(vo);
		if(i == 0) 
			System.out.println("데이터 수정 실패 ");
		else
			System.out.println("데이터 수정 성공!!");
	return "redirect:list";
	}
	
	@RequestMapping(value ="/deleteok/{id}", method = RequestMethod.GET)
	public String deletePostOk(@PathVariable("id") int id) {
		int i = boardService.deleteBoard(id);
		if(i == 0) 
			System.out.println("데이터 삭제 실패 ");
		else
			System.out.println("데이터 삭제 성공!!");
		return "redirect:../list";
	}
	
}