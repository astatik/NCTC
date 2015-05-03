package com.netcracker.servlet;/* 17:11 28.04.2015 by Viktor Taranenko */

import com.netcracker.entity.UserAccessLevelEntity;
import com.netcracker.facade.local_int.UserAccessLevel;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TestServlet", urlPatterns = "/testServlet")
public class TestServlet extends HttpServlet {
	@EJB
	private UserAccessLevel userAccessLevel;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<UserAccessLevelEntity> levels = userAccessLevel.findAll();
		response.getWriter().write("TestServlet output: ");
		for (UserAccessLevelEntity level : levels) {
			response.getWriter().write(level.getId() + " " + level.getName() + " ");
		}
	}
}
