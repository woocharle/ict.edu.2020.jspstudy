package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.BVO;
import com.ict.db.DAO;

public class List_cmd implements Command {
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		//List<BVO> list = DAO.getList();		
		
		Paging paging = new Paging();
		
		// 1. 전체 게시물의 수 구하기 
		int count = DAO.getCount();
		paging.setTotalRecord(count);
		
		// 2. 전체 게시물의 수을 가지고 전체 페이지의 수를 구하자.
		if(paging.getTotalRecord() <= paging.getNumPerPage()) {
			paging.setTotalPage(1);
		}else {
			paging.setTotalPage(paging.getTotalRecord()/paging.getNumPerPage());
			
			if(paging.getTotalRecord()%paging.getNumPerPage() != 0) {
				paging.setTotalPage(paging.getTotalPage()+1);
			}
			
		}
		
		// 3. 현재 페이지 구하기
		// list.jsp로 부터 cPage라는 파라미터에 현재 페이지값이 들어있다.
		// 맨처음 list.jsp에 들어오면  현재 페이지는 1 페이지이어야 한다.
		// 그 다음 부터는 cPage가 nowPage(현재페이지)가 된다.
		// 즉, cPage는 nowPage로 변한다.
		
		String cPage = request.getParameter("cPage");
		// cPege가 null인 경우는 맨처음 밖에 없다.
		// 나머지는 무조건 cPage를 받아야 한다.
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));
		}		
		
		//4.** 현재 페이지의 시작번호와 끝번호를 구해서 DB 에서 가져오자 
		paging.setBegin((paging.getNowPage()-1)*paging.getNumPerPage()+1);
		paging.setEnd((paging.getBegin()-1)+paging.getNumPerPage());
		
		
		// 5. 시작번호와 끝번호를 가지고 DB에서 게시물을 가져오자 
		paging.setBeginBlock((int)((paging.getNowPage()-1)/paging.getPagePerBlock())*paging.getPagePerBlock()+1);
		paging.setEndBlock(paging.getBeginBlock()+paging.getPagePerBlock()-1);
		
		// 6. 현재 페이지의 시작블록과 끝블록을 구하자(list.jsp에서 사용한다.) 
		// 1=>1-3, 2=>1-3, 3=>1-3
		// 4=>4-6, 5=>4-6, 6=>4-6
		// 7=>7-9, 8=>7-9, 9=>7-9

		
		// 주의 사항 : endBlock이 totalPage보다 클 수가 있다.
		//            이때는 쓸데없는 endBlock 생성된다.
		//            그래서 endBlock이 totalPage보다 크면
		//            endBlock을 totalPage로 변경 시키자 
		 if(paging.getEndBlock() > paging.getTotalPage()) {
		 	paging.setEndBlock(paging.getTotalPage());
		 }
		request.setAttribute("paging", paging);
		
		List<BVO> list = DAO.getList(paging.getBegin(), paging.getEnd());		
				
		request.setAttribute("list", list);
	
		return "view/list.jsp";
	}
}
