package uz.pdp.lesson_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Update", urlPatterns = "/update/*")
public class UpdateServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getPathInfo().substring(1));


        for (Book book : BookRepo.books) {
            if (book.getId() == id) {
                req.setAttribute("book", book);
                req.getRequestDispatcher("/book_update.jsp").forward(req, resp);
                return;
            }
        }

        resp.sendRedirect("/book/list");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id = Integer.parseInt(req.getPathInfo().substring(1));


        String title = req.getParameter("title");
        String author = req.getParameter("author");
        int pages = Integer.parseInt(req.getParameter("pages"));

        BookRepo.update(id, title, author, pages);


        resp.sendRedirect("/book/list");
    }


}
