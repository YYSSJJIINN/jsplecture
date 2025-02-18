package com.ohgiraffers.el.controller;

import com.ohgiraffers.el.model.dto.MemberDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/test2")
public class TestTwoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        MemberDTO member = new MemberDTO("홍길동", 19, "010-0000-0000", "gildong@kr.com");

        req.setAttribute("member", member);

        RequestDispatcher view = req.getRequestDispatcher("views/el/testEl2.jsp");
        view.forward(req, resp);

    }

}