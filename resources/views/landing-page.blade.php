<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>TanniewaPutra - Home</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="{{ asset('themes/v2/assets/img/favicon.png') }}" rel="icon">
    <link href="{{ asset('themes/v2/assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link
        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="{{ asset('themes/v2/assets/vendor/aos/aos.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
    <link href="{{ asset('themes/v2/assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="{{ asset('themes/v2/assets/css/style.css') }}" rel="stylesheet">


</head>

<body>

    <!-- ======= Header ======= -->
    @include('layouts.components.header')
    <!-- End Header -->

    <!-- ======= Hero Section ======= -->
    @if ($landingPage == true)
        @include('layouts.components.hero')
    @endif

    <!-- End Hero -->

    <main id="main">
        @if ($landingPage == true)
            <!-- ======= About Us Section ======= -->
            @include('layouts.components.about')
            <!-- End About Us Section -->
            <!-- ======= Services Section ======= -->
            @include('layouts.components.services')
            <!-- End Services Section -->
            <!-- ======= Cta Section ======= -->
            @include('layouts.components.cta')
            <!-- End Cta Section -->
            <!-- ======= Portfolio Section ======= -->
            @include('layouts.components.portfolio')
            <!-- End Portfolio Section -->
            <!-- ======= Clients Section ======= -->
            @include('layouts.components.clients')
            <!-- End Cliens Section -->
            <!-- ======= Frequently Asked Questions Section ======= -->
            @include('layouts.components.faq')
            <!-- End Frequently Asked Questions Section -->
        @else
            <!-- ======= Breadcrumbs ======= -->
            @include('layouts.components.breadcrumbs')
            <!-- End Breadcrumbs -->
        @endif



        <!-- ======= Contact Section ======= -->
        {{-- @include('layouts.components.contact') --}}
        <!-- End Contact Section -->

    </main><!-- End #main -->
    <!-- ======= Footer ======= -->
    @include('layouts.components.footer')
    <!-- End Footer -->

    <div id="preloader"></div>
    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{ asset('themes/v2/assets/vendor/aos/aos.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/glightbox/js/glightbox.min.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/isotope-layout/isotope.pkgd.min.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/swiper/swiper-bundle.min.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/waypoints/noframework.waypoints.js') }}"></script>
    <script src="{{ asset('themes/v2/assets/vendor/php-email-form/validate.js') }}"></script>

    <!-- Template Main JS File -->
    <script src="{{ asset('themes/v2/assets/js/main.js') }}"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#theme_toggle').on('click', function() {
                if ($('body').hasClass('dark-theme')) {
                    $(this).toggleClass('btn-light');
                    $(this).addClass('btn-dark');
                    $('#theme_toggle').html("<span class='bi-moon'></span>");
                    $('body').toggleClass('dark-theme');
                    $('.section-bg').toggleClass('dark-theme');
                    $('.section-title').toggleClass('dark-theme');
                    localStorage.setItem("mode", "light-theme");
                } else {
                    $(this).toggleClass('btn-light');
                    $(this).removeClass('btn-dark');
                    $('#theme_toggle').html("<span class='bi-sun'></span>");
                    $('body').toggleClass('dark-theme');
                    $('.section-bg').toggleClass('dark-theme');
                    $('.section-title').toggleClass('dark-theme');
                    localStorage.setItem("mode", "dark-theme");
                }
            })
            //check for localStorage, add as browser preference if missing
            if (!localStorage.getItem("mode")) {
                if (window.matchMedia("(prefers-color-scheme: dark)").matches) {
                    localStorage.setItem("mode", "dark-theme");
                } else {
                    localStorage.setItem("mode", "light-theme");
                }
            }
            //set interface to match localStorage
            if (localStorage.getItem("mode") == "dark-theme") {
                $('#theme_toggle').removeClass('btn-dark');
                $('#theme_toggle').addClass('btn-light');
                $('body').addClass('dark-theme');
                $('.section-bg').addClass('dark-theme');
                $('.section-title').addClass('dark-theme');
                //$('h1').html("Dark Mode");
                $('#theme_toggle').html("<span class='bi-moon'></span>");
                document.getElementById("theme_toggle").checked = true;
            } else {
                $('#theme_toggle').addClass('btn-dark');
                $('#theme_toggle').removeClass('btn-light');
                $('body').removeClass('dark-theme');
                $('.section-bg').removeClass('dark-theme');
                $('.section-title').removeClass('dark-theme');
                //$('h1').html("Light Mode");
                $('#theme_toggle').html("<span class='bi-moon'></span>");
                document.getElementById("theme_toggle").checked = false;
            };
        });
    </script>

</body>

</html>
