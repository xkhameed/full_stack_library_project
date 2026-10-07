package uz.pdp.lesson_4;


import lombok.*;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Builder

public class Book {

    private int id;
    private String title;
    private String author;
    private int pages;


}
