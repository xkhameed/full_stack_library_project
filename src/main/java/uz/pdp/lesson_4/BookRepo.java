package uz.pdp.lesson_4;

import java.util.ArrayList;
import java.util.List;

public class BookRepo {

    public static int id = 1;

    public static List<Book> books = new ArrayList<>();



    public static Book findById(int id) {
        for (Book book : books) {
            if (book.getId() == id) {
                return book;
            }
        }
        return null;
    }

    public static void update(int id, String title, String author, int pages) {
        Book book = findById(id);

        if (book != null) {
            book.setTitle(title);
            book.setAuthor(author);
            book.setPages(pages);
        }
    }
}