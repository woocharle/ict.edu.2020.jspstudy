package com.ict.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ict.db.DAO;
import com.ict.db.VO;

public class List_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		//페이징 기법으로 시작번호, 끝번호, 시작블록, 끝블록 구하기
		Paging paging = new Paging();
		
		//1. 전체 페이지수 구하기
		int su = DAO.getCount();
		paging.setTotalRecord(su);
		
		//2. 전체 게시물수를 구하기 
		if(paging.getTotalRecord() <= paging.getNumPerpage()) {
			paging.setTotalPage(1);
		} else {
			paging.setTotalPage(paging.getTotalRecord() / paging.getNumPerpage());
			// 나머지가 있으면 한 페이지 추가.
			if(paging.getTotalRecord() % paging.getNumPerpage() != 0) {
				paging.setTotalPage(paging.getTotalPage()+1);
			}
			
		}
		
		/* 3. 현재페이지를 구하기: 처음을 제외한 나머지 list에 갈 경우는 무조건 
		 							cPage의 파라미터값을 넣으면 된다.	 */
	
		String cPage = request.getParameter("cPage");
		if(cPage == null) {
			paging.setNowPage(1);
		}else {
			paging.setNowPage(Integer.parseInt(cPage));
		}
		
		//4. 시작번호, 끝번호 구하기 
		paging.setBegin((paging.getNowPage() - 1) * paging.getNumPerpage());
		paging.setEnd((paging.getBegin() - 1) + paging.getNumPerpage());
		
		
		//5. 시작블록, 끝블록 구하기 
		paging.setBeginBlock((int)((paging.getNowPage() - 1)/paging.getPagePerBlock()) * paging.getPagePerBlock() + 1);
		paging.setEndBlock(paging.getBeginBlock() + paging.getPagePerBlock() - 1);
		
		
		//주의 사항: endBlock이 totalPage보다 클 수 있을 경우 endBlock의 값을 totalpage보다 클 경우
		if(paging.getEndBlock() > paging.getTotalPage()){
			paging.setEndBlock(paging.getTotalPage());
		}
		
		
		request.setAttribute("paging", paging);
		
		//DB처리
		
		List<VO> list = DAO.getList(paging);
		request.setAttribute("list", list);
		
		return "view/list.jsp";
		
	}
}
