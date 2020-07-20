package com.ict.model;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Down_cmd implements Command{
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		String path = request.getParameter("path");
		String filename = request.getParameter("filename");
		
		ServletContext context = request.getSession().getServletContext();
		
		String r_path = context.getRealPath("/" + path);
		
		response.setContentType("application/x-msdownload");
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		BufferedOutputStream bos = null;
		int b;
		
		try {
			response.setHeader("Content-Disposition", 
						       "attachment; filename="+URLEncoder.encode(filename,"UTF-8"));
			
			File file = new File(r_path+"/"+new String(filename.getBytes("UTF-8")));
			
			fis = new FileInputStream(file);
			bis = new BufferedInputStream(fis);
			bos = new BufferedOutputStream(response.getOutputStream());
			
			while((b=bis.read()) != -1) {
				bos.write(b);
				bos.flush();
			}
					
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				bos.close();
				bis.close();
				fis.close();
			} catch (Exception e2) {
				// TODO: handle exception
			}
		}
			
		return "view/onelist";
	}
}
