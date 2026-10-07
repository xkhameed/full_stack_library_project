package uz.pdp.lesson_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "Delete", urlPatterns = "/delete/*")
public class DeleteServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getPathInfo().substring(1));
        for (Book book : BookRepo.books) {
            if( book.getId() == id){
                BookRepo.books.remove(book);
                break;
            }
        }

        resp.sendRedirect("/book/list");

    }


}
