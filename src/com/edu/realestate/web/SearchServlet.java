package com.edu.realestate.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.edu.realestate.exceptions.RealEstateException;
import com.edu.realestate.model.Advertisement;
import com.edu.realestate.model.SearchCriteria;
import com.edu.realestate.services.ReferenceService;
import com.edu.realestate.services.ReferenceServiceImpl;


/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private ReferenceService service;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		service = new ReferenceServiceImpl();	
		};
	

	/**
	 * @see Servlet#destroy()
	 */
	public void destroy() {
		service = null; 
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		Integer cid = 0;
		try {
			String paramId = request.getParameter("id");
			cid = Integer.parseInt(paramId);
		}
		catch (Exception ex) {
			response.sendError(422, "bad parameters");
			return;
		}
		
		
		SearchCriteria sc = new SearchCriteria();
		sc.setCityId(cid);
		List<Advertisement> listAds;
		try {
			listAds = service.findAdsByCriteria(sc);
			for (Advertisement ad : listAds)
			pw.print(ad);
		} catch (RealEstateException e) {
			response.sendError(500, "Unexpected error");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
