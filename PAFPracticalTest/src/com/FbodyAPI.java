package com;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FbodyAPI
 */
@WebServlet("/FbodyAPI")
public class FbodyAPI extends HttpServlet {
	private static final long serialVersionUID = 1L;
	FundingBoady FundingBoadyObj = new FundingBoady();
       
    /**FundingBoadyObj
     * @see HttpServlet#HttpServlet()
     */
    public FbodyAPI() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String output = FundingBoadyObj.insertFundingBody(request.getParameter("fBodyName"), 
				 request.getParameter("fBodyEmail"),
				 request.getParameter("fBodyAddress"), 
				request.getParameter("fBodyPhone"),
				request.getParameter("fBodyIarea"), 
				request.getParameter("fBodyFrange")); 
				response.getWriter().write(output);
	}

	/**
	 * @see HttpServlet#doPut(HttpServletRequest, HttpServletResponse)
	 */
	protected void doPut(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map paras = getParasMap(request); 
		 String output = FundingBoadyObj.updateFundingBody(paras.get("hidFbodyIDSave").toString(), 
		 paras.get("fBodyName").toString(), 
		 paras.get("fBodyEmail").toString(), 
		paras.get("fBodyAddress").toString(), 
		paras.get("fBodyPhone").toString(),
		paras.get("fBodyIarea").toString(),
		paras.get("fBodyFrange").toString()); 
		response.getWriter().write(output);
		
	}

	/**
	 * @see HttpServlet#doDelete(HttpServletRequest, HttpServletResponse)
	 */
	protected void doDelete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map paras = getParasMap(request); 
		 String output = FundingBoadyObj.deleteFundingBody(paras.get("stakeholderID").toString()); 
		response.getWriter().write(output); 
	}
	
	
	// Convert request parameters to a Map
		private static Map getParasMap(HttpServletRequest request) 
		{ 
		 Map<String, String> map = new HashMap<String, String>(); 
		try
		 { 
		 Scanner scanner = new Scanner(request.getInputStream(), "UTF-8"); 
		 String queryString = scanner.hasNext() ? scanner.useDelimiter("\\A").next() : ""; 
		 scanner.close(); 
		 String[] params = queryString.split("&"); 
		 for (String param : params) 
		 { 
		String[] p = param.split("=");
		 map.put(p[0], p[1]); 
		 } 
		 } 
		catch (Exception e) 
		 { 
		 } 
		return map; 
		}
	
	
	
	
	

}
