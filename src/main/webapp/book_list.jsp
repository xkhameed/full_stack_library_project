<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Library — Book List</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap"
          rel="stylesheet">


    <style>

        :root {
            --bg: #f7f4ee;
            --text: #20242a;
            --muted: #73777d;
            --brown: #6f4e37;
            --brown-dark: #513726;
            --border: #e5ded4;
            --white: #ffffff;
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            background: var(--bg);
            color: var(--text);
            font-family: "DM Sans", sans-serif;
        }


        /* NAVBAR */

        .navbar {
            background: rgba(255, 255, 255, .95);
            border-bottom: 1px solid var(--border);
        }

        .navbar-brand {
            font-family: "Playfair Display", serif;
            font-size: 1.5rem;
            font-weight: 700;
            color: var(--text) !important;
        }

        .brand-icon {
            display: inline-flex;
            align-items: center;
            justify-content: center;

            width: 38px;
            height: 38px;

            margin-right: 9px;

            border-radius: 11px;

            background: var(--brown);
            color: white;
        }

        .nav-link {
            color: #60656b !important;
            font-weight: 500;
        }

        .nav-link:hover,
        .nav-link.active {
            color: var(--brown) !important;
        }

        .add-btn {
            background: var(--brown);
            color: white !important;

            border-radius: 10px;

            padding: 9px 16px !important;

            font-weight: 600;
        }

        .add-btn:hover {
            background: var(--brown-dark);
        }


        /* PAGE HEADER */

        .page {
            padding: 55px 0 70px;
        }

        .eyebrow {
            color: var(--brown);

            text-transform: uppercase;
            letter-spacing: 3px;

            font-size: 12px;
            font-weight: 700;
        }

        .page-title {
            font-family: "Playfair Display", serif;

            font-size: clamp(2.5rem, 5vw, 4rem);

            margin-top: 8px;
            margin-bottom: 8px;
        }

        .page-description {
            color: var(--muted);

            max-width: 600px;

            margin-bottom: 0;
        }


        /* SEARCH */

        .search-wrapper {
            background: var(--white);

            border: 1px solid var(--border);

            border-radius: 14px;

            padding: 7px;

            box-shadow: 0 10px 30px rgba(50, 35, 25, .06);
        }

        .search-wrapper .form-control {
            border: none;

            box-shadow: none !important;

            padding-left: 12px;
        }

        .search-btn {
            background: var(--brown);
            color: white;

            border: none;

            border-radius: 10px;

            padding: 10px 20px;

            font-weight: 600;
        }

        .search-btn:hover {
            background: var(--brown-dark);
            color: white;
        }


        /* TABLE CARD */

        .table-card {
            margin-top: 35px;

            background: var(--white);

            border: 1px solid var(--border);

            border-radius: 20px;

            overflow: hidden;

            box-shadow: 0 15px 45px rgba(50, 35, 25, .07);
        }

        .table {
            margin: 0;
        }

        .table thead {
            background: #faf8f4;
        }

        .table th {
            color: #888078;

            text-transform: uppercase;

            letter-spacing: 1px;

            font-size: 11px;

            font-weight: 700;

            padding: 18px 22px;

            border-bottom: 1px solid var(--border);
        }

        .table td {
            padding: 19px 22px;

            vertical-align: middle;

            border-color: #f0ebe4;
        }

        .table tbody tr {
            transition: background .2s ease;
        }

        .table tbody tr:hover {
            background: #fcfaf7;
        }


        /* BOOK DATA */

        .book-id {
            color: #999188;

            font-size: 14px;
        }

        .book-title {
            font-weight: 700;

            color: var(--text);
        }

        .author {
            color: var(--muted);
        }

        .pages {
            color: var(--muted);

            font-size: 14px;
        }


        /* ACTION BUTTONS */

        .action-btn {
            border-radius: 9px;

            padding: 7px 12px;

            font-size: 13px;

            font-weight: 600;

            text-decoration: none;
        }

        .update-btn {
            color: var(--brown);

            border: 1px solid #d8c8b9;

            background: #fff;
        }

        .update-btn:hover {
            background: var(--brown);

            border-color: var(--brown);

            color: white;
        }

        .delete-btn {
            color: #b44a4a;

            border: 1px solid #e8caca;

            background: #fff;
        }

        .delete-btn:hover {
            background: #b44a4a;

            border-color: #b44a4a;

            color: white;
        }


        /* EMPTY STATE */

        .empty {
            text-align: center;

            padding: 65px 20px;

            color: var(--muted);
        }

        .empty-icon {
            width: 60px;
            height: 60px;

            margin: 0 auto 18px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 16px;

            background: #f5efe7;

            color: var(--brown);

            font-size: 25px;
        }

        .empty h5 {
            color: var(--text);

            font-weight: 700;
        }


        /* FOOTER */

        .footer {
            color: #999188;

            font-size: 13px;

            padding-top: 28px;
        }


        /* MOBILE */

        @media (max-width: 767px) {

            .page {
                padding-top: 35px;
            }

            .table-card {
                border-radius: 15px;
            }

            .table th,
            .table td {
                white-space: nowrap;
            }

            .search-wrapper {
                margin-top: 25px;
            }

        }

    </style>

</head>


<body>


<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg sticky-top">

    <div class="container py-2">

        <a class="navbar-brand" href="/">

            <span class="brand-icon">
                ▦
            </span>

            Library

        </a>


        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div class="collapse navbar-collapse" id="navbarContent">

            <ul class="navbar-nav ms-auto align-items-lg-center gap-lg-2">

                <li class="nav-item">

                    <a class="nav-link active" href="/book/list">
                        Book List
                    </a>

                </li>


                <li class="nav-item">

                    <a class="nav-link add-btn" href="/book/create">
                        + Add Book
                    </a>

                </li>

            </ul>

        </div>

    </div>

</nav>



<!-- PAGE -->

<main class="page">

    <div class="container">


        <!-- HEADER -->

        <div class="row align-items-end g-4">

            <div class="col-lg-7">

                <div class="eyebrow">
                    Your collection
                </div>

                <h1 class="page-title">
                    Book Library
                </h1>

                <p class="page-description">
                    Browse, manage and discover all the books
                    in your personal collection.
                </p>

            </div>


            <!-- SEARCH -->

            <div class="col-lg-5">

                <form class="search-wrapper d-flex"
                      role="search"
                      method="GET"
                      action="/book/list">

                    <input class="form-control"
                           type="search"
                           name="search"
                           placeholder="Search title or author..."
                           aria-label="Search">

                    <button class="search-btn"
                            type="submit">

                        Search

                    </button>

                </form>

            </div>

        </div>



        <!-- TABLE -->

        <div class="table-card">

            <div class="table-responsive">

                <table class="table align-middle">

                    <thead>

                    <tr>

                        <th>
                            ID
                        </th>

                        <th>
                            Book
                        </th>

                        <th>
                            Author
                        </th>

                        <th>
                            Pages
                        </th>

                        <th class="text-end">
                            Actions
                        </th>

                    </tr>

                    </thead>


                    <tbody>


                    <c:choose>


                        <c:when test="${not empty bookList}">


                            <c:forEach var="book"
                                       items="${bookList}">

                                <tr>


                                    <td>

                                        <span class="book-id">
                                            #${book.id}
                                        </span>

                                    </td>


                                    <td>

                                        <span class="book-title">
                                                ${book.title}
                                        </span>

                                    </td>


                                    <td>

                                        <span class="author">
                                                ${book.author}
                                        </span>

                                    </td>


                                    <td>

                                        <span class="pages">
                                            ${book.pages} pages
                                        </span>

                                    </td>


                                    <td class="text-end">


                                        <a class="action-btn update-btn"
                                           href="/update/${book.id}">

                                            Edit

                                        </a>


                                        <a class="action-btn delete-btn ms-1"
                                           href="/delete/${book.id}">

                                            Delete

                                        </a>


                                    </td>


                                </tr>

                            </c:forEach>


                        </c:when>


                        <c:otherwise>


                            <tr>

                                <td colspan="5">

                                    <div class="empty">

                                        <div class="empty-icon">
                                            📚
                                        </div>

                                        <h5>
                                            No books found
                                        </h5>

                                        <p class="mb-3">
                                            Your search didn't match any books.
                                        </p>

                                        <a href="/book/create"
                                           class="btn btn-dark">

                                            + Add New Book

                                        </a>

                                    </div>

                                </td>

                            </tr>


                        </c:otherwise>


                    </c:choose>


                    </tbody>

                </table>

            </div>

        </div>



        <!-- FOOTER -->

        <div class="footer d-flex justify-content-between">

            <span>
                Library Management System
            </span>

            <span>
                Books · Organize · Discover
            </span>

        </div>


    </div>

</main>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>