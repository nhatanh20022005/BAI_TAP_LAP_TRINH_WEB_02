package vn.iotstart.controllers;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
            throws ServletException, IOException {

        // 1. Hủy session (xoá thông tin user đang đăng nhập)
        HttpSession session = req.getSession(false); // false: không tạo session mới
        if (session != null) {
            session.invalidate();
        }

        // 2. Xoá cookie "username" dùng cho remember-me (nếu có)
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie c : cookies) {
                if ("username".equals(c.getName())) {  // trùng với COOKIE_REMEMBER bên LoginController
                    c.setMaxAge(0); // hết hạn ngay
                    c.setPath(req.getContextPath().isEmpty() ? "/" : req.getContextPath());
                    resp.addCookie(c);
                }
            }
        }

        // 3. Chuyển về trang login
        resp.sendRedirect(req.getContextPath() + "/login");
    }
}