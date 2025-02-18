package com.ohgiraffers.el.controller;

import com.ohgiraffers.el.model.dto.MemberDTO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/test1")
public class TestOneServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        req.setAttribute("name", "홍길동");
        req.setAttribute("age", Integer.valueOf(19));
        req.setAttribute("phone", "010-0000-0000");

        List<String> items = new ArrayList<>();
        items.add(new String("apple"));
        items.add(new String("banana"));
        items.add(new String("melon"));

        req.setAttribute("items", items);

        RequestDispatcher view = req.getRequestDispatcher("views/el/testEl1.jsp");
        view.forward(req, resp);

    }

}
