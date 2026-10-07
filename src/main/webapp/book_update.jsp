<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Library — Update Book</title>

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

        .nav-link:hover {
            color: var(--brown) !important;
        }

        .back-btn {
            border: 1px solid var(--border);
            background: white;
            color: var(--text);

            border-radius: 10px;

            padding: 9px 16px;

            font-weight: 600;
        }

        .back-btn:hover {
            border-color: var(--brown);
            color: var(--brown);
        }

        /* FORM */

        .page {
            min-height: calc(100vh - 75px);

            display: flex;
            align-items: center;

            padding: 60px 0;
        }

        .form-card {
            max-width: 650px;
            margin: auto;

            background: var(--white);

            border: 1px solid var(--border);
            border-radius: 22px;

            padding: 42px;

            box-shadow: 0 18px 50px rgba(60, 45, 30, .08);
        }

        .eyebrow {
            color: var(--brown);

            text-transform: uppercase;
            letter-spacing: 3px;

            font-size: 12px;
            font-weight: 700;
        }

        .form-card h1 {
            font-family: "Playfair Display", serif;

            font-size: 2.7rem;

            margin-top: 8px;
            margin-bottom: 8px;
        }

        .description {
            color: var(--muted);
            margin-bottom: 32px;
        }

        .form-label {
            font-weight: 600;
            margin-bottom: 8px;
        }

        .form-control {
            border: 1px solid var(--border);
            border-radius: 11px;

            padding: 12px 14px;

            font-size: 15px;
        }

        .form-control:focus {
            border-color: var(--brown);

            box-shadow: 0 0 0 4px rgba(111, 78, 55, .10);
        }

        .form-group {
            margin-bottom: 21px;
        }

        .update-btn {
            width: 100%;

            background: var(--brown);
            color: white;

            border: none;
            border-radius: 11px;

            padding: 13px;

            font-weight: 600;
            font-size: 15px;

            margin-top: 8px;
        }

        .update-btn:hover {
            background: var(--brown-dark);
            color: white;
        }

        .book-info {
            display: flex;
            align-items: center;
            gap: 12px;

            padding: 13px 15px;

            margin-bottom: 28px;

            background: #faf8f4;

            border: 1px solid var(--border);
            border-radius: 11px;

            color: var(--muted);
            font-size: 14px;
        }

        .book-icon {
            width: 35px;
            height: 35px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 9px;

            background: var(--brown);
            color: white;
        }

        @media (max-width: 576px) {

            .form-card {
                padding: 28px 22px;
                border-radius: 17px;
            }

            .form-card h1 {
                font-size: 2.2rem;
            }

            .page {
                padding: 30px 12px;
            }
        }
    </style>
</head>

<body>

<nav class="navbar sticky-top">
    <div class="container py-2">

        <a class="navbar-brand" href="/">
            <span class="brand-icon">▦</span>
            Library
        </a>

        <a href="/book/list" class="back-btn">
            ← Back to Books
        </a>

    </div>
</nav>


<main class="page">

    <div class="container">

        <div class="form-card">

            <div class="eyebrow">
                Library Collection
            </div>

            <h1>
                Update Book
            </h1>

            <p class="description">
                Update the information of your selected book.
            </p>


            <div class="book-info">

                <div class="book-icon">
                    📖
                </div>

                <span>
                    You are editing an existing book from your collection.
                </span>

            </div>


            <form method="POST">

                <div class="form-group">

                    <label for="t" class="form-label">
                        Book Title
                    </label>

                    <input type="text"
                           class="form-control"
                           id="t"
                           name="title"
                           value="${book.title}"
                           placeholder="Enter book title"
                           required>

                </div>


                <div class="form-group">

                    <label for="a" class="form-label">
                        Author
                    </label>

                    <input type="text"
                           class="form-control"
                           id="a"
                           name="author"
                           value="${book.author}"
                           placeholder="Enter author name"
                           required>

                </div>


                <div class="form-group">

                    <label for="p" class="form-label">
                        Number of Pages
                    </label>

                    <input type="number"
                           class="form-control"
                           id="p"
                           name="pages"
                           value="${book.pages}"
                           placeholder="Enter number of pages"
                           min="1"
                           required>

                </div>


                <button type="submit" class="update-btn">
                    Update Book
                </button>

            </form>

        </div>

    </div>

</main>

</body>
</html>