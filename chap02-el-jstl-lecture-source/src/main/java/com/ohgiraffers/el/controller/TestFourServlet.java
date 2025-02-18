package com.ohgiraffers.el.controller;

import com.ohgiraffers.el.model.dto.MemberDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/test4")
public class TestFourServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        MemberDTO sessionMember = new MemberDTO("홍길동", 19, "010-0000-0000", "gildong@kr.com");
        MemberDTO requestMember = new MemberDTO("임꺽정", 20, "010-9999-9999", "ggukjung@kr.com");

        HttpSession session = req.getSession();

        req.setAttribute("member", requestMember);
        session.setAttribute("member", sessionMember);

        RequestDispatcher view = req.getRequestDispatcher("views/el/testEl4.jsp");
        view.forward(req, resp);

    }

}
