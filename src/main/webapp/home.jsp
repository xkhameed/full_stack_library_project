<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Library — Home</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap"
          rel="stylesheet">

    <style>
        :root {
            --bg: #f7f4ee;
            --card: #ffffff;
            --text: #20242a;
            --muted: #73777d;
            --brown: #6f4e37;
            --brown-dark: #513726;
            --border: #e8e1d7;
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
            background: rgba(255, 255, 255, 0.94);
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

            font-size: 20px;
        }

        .nav-link {
            color: #60656b !important;
            font-weight: 500;
            margin: 0 4px;
        }

        .nav-link:hover,
        .nav-link.active {
            color: var(--brown) !important;
        }

        .nav-add {
            background: var(--brown);
            color: white !important;

            padding: 9px 17px !important;
            border-radius: 10px;

            margin-left: 8px;
        }

        .nav-add:hover {
            background: var(--brown-dark);
        }

        /* HERO */

        .hero {
            min-height: calc(100vh - 73px);

            display: flex;
            align-items: center;

            padding: 70px 0;
        }

        .hero-content {
            max-width: 650px;
        }

        .eyebrow {
            display: inline-block;

            color: var(--brown);

            text-transform: uppercase;
            letter-spacing: 3px;

            font-size: 13px;
            font-weight: 700;

            margin-bottom: 14px;
        }

        .hero h1 {
            font-family: "Playfair Display", serif;

            font-size: clamp(3rem, 7vw, 5.8rem);
            line-height: 1.02;

            font-weight: 700;

            margin-bottom: 25px;
        }

        .hero h1 span {
            color: var(--brown);
        }

        .hero-description {
            color: var(--muted);

            font-size: 1.1rem;
            line-height: 1.8;

            max-width: 570px;

            margin-bottom: 35px;
        }

        /* BUTTONS */

        .btn-main {
            background: var(--brown);
            color: white;

            border: none;
            border-radius: 11px;

            padding: 13px 22px;

            font-weight: 600;
        }

        .btn-main:hover {
            background: var(--brown-dark);
            color: white;
        }

        .btn-outline-library {
            border: 1px solid var(--border);

            background: white;
            color: var(--text);

            border-radius: 11px;

            padding: 13px 22px;

            font-weight: 600;
        }

        .btn-outline-library:hover {
            border-color: var(--brown);
            color: var(--brown);
            background: white;
        }

        /* BOOK VISUAL */

        .book-area {
            position: relative;

            min-height: 430px;

            display: flex;
            align-items: center;
            justify-content: center;
        }

        .book-card {
            position: relative;

            width: 270px;
            height: 350px;

            background: var(--brown);

            border-radius: 7px 16px 16px 7px;

            box-shadow:
                    20px 25px 50px rgba(50, 35, 25, .20);

            transform: rotate(-5deg);

            padding: 38px 32px;

            color: white;
        }

        .book-card::before {
            content: "";

            position: absolute;

            left: 17px;
            top: 0;

            width: 2px;
            height: 100%;

            background: rgba(255,255,255,.18);
        }

        .book-small {
            font-size: 12px;
            letter-spacing: 3px;
            text-transform: uppercase;

            opacity: .75;
        }

        .book-card h2 {
            font-family: "Playfair Display", serif;

            font-size: 42px;
            line-height: 1.05;

            margin-top: 55px;
        }

        .book-card p {
            position: absolute;

            bottom: 25px;

            font-size: 13px;

            opacity: .7;
        }

        .book-card-back {
            position: absolute;

            width: 240px;
            height: 320px;

            background: #d9c5ad;

            border-radius: 7px 14px 14px 7px;

            transform: rotate(8deg);

            z-index: -1;
        }

        /* FEATURES */

        .features {
            margin-top: 35px;
        }

        .feature {
            display: flex;
            align-items: center;

            gap: 12px;

            color: var(--muted);

            font-size: 14px;
        }

        .feature-icon {
            width: 35px;
            height: 35px;

            display: flex;
            align-items: center;
            justify-content: center;

            border-radius: 9px;

            background: white;
            border: 1px solid var(--border);

            color: var(--brown);
        }

        @media (max-width: 991px) {
            .hero {
                text-align: center;
                padding-top: 50px;
            }

            .hero-content {
                margin: auto;
            }

            .hero-description {
                margin-left: auto;
                margin-right: auto;
            }

            .book-area {
                margin-top: 50px;
            }

            .nav-add {
                display: inline-block;
                width: fit-content;
            }
        }
    </style>
</head>

<body>

<nav class="navbar navbar-expand-lg sticky-top">
    <div class="container py-2">

        <a class="navbar-brand" href="/">
            <span class="brand-icon">▦</span>
            Library
        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent"
                aria-controls="navbarContent"
                aria-expanded="false"
                aria-label="Toggle navigation">

            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarContent">

            <ul class="navbar-nav ms-auto align-items-lg-center">

                <li class="nav-item">
                    <a class="nav-link active" href="/">
                        Home
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/book/list">
                        Book List
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link nav-add" href="/book/create">
                        + Add Book
                    </a>
                </li>

            </ul>

        </div>
    </div>
</nav>


<main class="hero">

    <div class="container">

        <div class="row align-items-center">

            <!-- LEFT SIDE -->

            <div class="col-lg-7">

                <div class="hero-content">

                    <div class="eyebrow">
                        Your personal library
                    </div>

                    <h1>
                        Every book has
                        <span>a story.</span>
                    </h1>

                    <p class="hero-description">
                        Organize your collection, discover your favorite books,
                        and keep everything you love to read in one beautiful place.
                    </p>

                    <div class="d-flex gap-3 flex-wrap">

                        <a href="/book/list"
                           class="btn btn-main">
                            Explore Books →
                        </a>

                        <a href="/book/create"
                           class="btn btn-outline-library">
                            + Add New Book
                        </a>

                    </div>

                    <div class="features">

                        <div class="row g-3">

                            <div class="col-sm-4">

                                <div class="feature">

                                    <div class="feature-icon">
                                        ✓
                                    </div>

                                    <span>
                                        Easy to manage
                                    </span>

                                </div>

                            </div>

                            <div class="col-sm-4">

                                <div class="feature">

                                    <div class="feature-icon">
                                        🔎
                                    </div>

                                    <span>
                                        Quick search
                                    </span>

                                </div>

                            </div>

                            <div class="col-sm-4">

                                <div class="feature">

                                    <div class="feature-icon">
                                        ♡
                                    </div>

                                    <span>
                                        Your collection
                                    </span>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>


            <!-- RIGHT SIDE -->

            <div class="col-lg-5">

                <div class="book-area">

                    <div class="book-card-back"></div>

                    <div class="book-card">

                        <div class="book-small">
                            Library Collection
                        </div>

                        <h2>
                            Read.<br>
                            Learn.<br>
                            Grow.
                        </h2>

                        <p>
                            A place for every story.
                        </p>

                    </div>

                </div>

            </div>

        </div>

    </div>

</main>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>