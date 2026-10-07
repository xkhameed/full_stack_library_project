package uz.pdp.lesson_4;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookList", urlPatterns = "/book/list")
public class BookListServlet extends HttpServlet {


//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        List<Book> bookList = BookRepo.books;
//        req.setAttribute("bookList", bookList);
//        req.getRequestDispatcher("/book_list.jsp").forward(req, resp);
//
//
//    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String search = req.getParameter("search");

        List<Book> bookList;

        if (search == null || search.isBlank()) {
            bookList = BookRepo.books;
        } else {
            String keyword = search.toLowerCase().trim();

            bookList = BookRepo.books.stream()
                    .filter(book ->
                            book.getTitle().toLowerCase().contains(keyword)
                                    || book.getAuthor().toLowerCase().contains(keyword)
                    )
                    .toList();
        }

        req.setAttribute("bookList", bookList);
        req.getRequestDispatcher("/book_list.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
