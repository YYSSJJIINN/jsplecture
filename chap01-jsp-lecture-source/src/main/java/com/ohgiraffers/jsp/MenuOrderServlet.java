package com.ohgiraffers.jsp;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/menu/order")
public class MenuOrderServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        System.out.println("[MenuOrderServlet] doPost 요청 캐치!");

        /* 설명. 서블릿의 역할 3가지
         *  1. 요청 받은 값 확인 및 검증
         *  2. 비즈니스 로직 처리
         *  3. 응답 페이지 생성 후 응답
         * */

        /* 설명. #1. 요청에 대한 처리 */
        req.setCharacterEncoding("UTF-8");

        String menuName = req.getParameter("menuName");
        int amount = Integer.parseInt(req.getParameter("amount"));

        System.out.println("menuName : " + menuName);
        System.out.println("amount : " + amount);

        /* 설명. #2. 비즈니스 로직 처리
         *  비즈니스 로직은 대부분 DB에 CRUD 연산 등을 이용해 이뤄진다.
         *  여기서는 DB 연결을 할 것은 아니기 때문에 간단한 로직 처리만 해보자.
         * */
        int orderPrice = 0;

        switch(menuName) {
            case "햄버거" : orderPrice = 6000 * amount; break;
            case "짜장면" : orderPrice = 7000 * amount; break;
            case "짬뽕" : orderPrice = 8000 * amount; break;
            case "순대국" : orderPrice = 5000 * amount; break;
        }

        /* 설명. #3. 응답 페이지 생성 후 응답
         *  직접 문자열로 페이지를 생성 후 스트림으로 내보내도 되지만
         *  페이지 작성이 쉽고 응답을 보여주는 역할(view)을 구분하여 따로 응답만 전용으로 할 수 있는 jsp 쪽으로
         *  request에 값을 담은 후 forward 해서 화면에 출력해보자.
         * */
        req.setAttribute("menuName", menuName);
        req.setAttribute("amount", amount);
        req.setAttribute("orderPrice", orderPrice);

        /* 설명. 서블릿 컨테이너 내부에서는 /root가 적용된 상태이다. */
        RequestDispatcher rd = req.getRequestDispatcher("/jsp/5_response.jsp");
        rd.forward(req, resp);
    }
}
