<%!
    preload = False
    title = "REPLACE_ME"
%>

<!DOCTYPE html>
<!--[if IE 8]>			<html class="ie ie8" lang="nl"> <![endif]-->
<!--[if IE 9]>			<html class="ie ie9" lang="nl"> <![endif]-->
<!--[if gt IE 9]><!-->	<html lang="nl"> <!--<![endif]-->
<head>
    <meta charset="utf-8" />
    <title>${self.attr.title} - KLOK-RACING</title>
    <meta name="keywords" content="Scooters,Brommers,Beerse" />
    <meta name="description" content="Uw brommer- en scooterdealer met een persoonlijke aanpak en meer dan 30 jaar ervaring." />
    <meta name="Author" content="Jens Willemsens [jensw.be]" />

    <!-- mobile settings -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

    <!-- FAVICON -->
    <link rel="apple-touch-icon" sizes="180x180" href="/assets/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" href="/assets/favicon/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="/assets/favicon/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="/assets/favicon/manifest.json">
    <link rel="mask-icon" href="/assets/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="theme-color" content="#ffffff">

    <!-- WEB FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400%7CRaleway:300,400,500,600,700%7CLato:300,400,400italic,600,700%7CRoboto%3A400%2C100%2C300%2C500%2C700%2C900%7CBenchNine%3A700%2C400&display=swap" rel="stylesheet" media="all"/>

    <!-- CORE CSS -->
    <link href="/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- REVOLUTION SLIDER -->
    <link href="/assets/plugins/slider.revolution.v5/css/pack.css" rel="stylesheet">

    <!-- MINIFIED WEBSITE CSS -->
    <link href="/assets/css/klokracing.min.css" rel="stylesheet">

    <!-- CUSTOM PAGE CSS -->
    <link href="/assets/css/layout-shop.css" rel="stylesheet">
    <%block name="css"/>

    <!-- Leaflet Maps API -->
    <link rel="stylesheet"
          href="https://unpkg.com/leaflet@1.3.3/dist/leaflet.css"
          integrity="sha512-Rksm5RenBEKSKFjgI3a41vrjkw4EVPlJ3+OiI65vTjIdo9brlAacEuKOiQ5OFh7cOI1bkDwLqdLw3Zg0cRJAAQ=="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.3.3/dist/leaflet.js"
            integrity="sha512-tAGcCfR4Sc5ZP5ZoVz0quoZDYX5aCtEm/eu1KhSLj2c9eFrylXZknQYmxUssFaVJKvvc0dJQixhGjG2yXWiV9Q=="
            crossorigin=""></script>
</head>

<body class="smoothscroll enable-animation">

    <!-- wrapper -->
    <div id="wrapper">

        <div id="header" class="clearfix sticky">

            <!-- TOP NAV -->
            <header id="topNav">
                <div class="container">

                    <!-- Mobile Menu Button -->
                    <button class="btn btn-mobile" data-toggle="collapse" data-target=".nav-main-collapse">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Logo -->
                    <a class="logo pull-left">
                      <img src="/assets/img/logo.jpg" alt="Logo van KLOK-RACING"/>
                    </a>

                    <!--
                    Top Nav

                    AVAILABLE CLASSES:
                    submenu-dark = dark sub menu
                -->
                <div class="navbar-collapse pull-right nav-main-collapse collapse submenu-dark">
                    <nav class="nav-main">

                        <!--
                        NOTE

                        For a regular link, remove "dropdown" class from LI tag and "dropdown-toggle" class from the href.
                        Direct Link Example:

                        <li>
                        <a href="#">HOME</a>
                    </li>
                -->
                <ul id="topMain" class="nav nav-pills nav-main">
                    <%include file="navigation.part.mako" />
                </ul>

            </nav>
        </div>

    </div>
</header>
<!-- /Top Nav -->

</div>

${self.body()}

<!-- FOOTER -->
<footer id="footer">
    <div class="copyright">
        <div class="container">
            % if len(data['general']['openingsuren']['footer']) > 1:
                <ul class="pull-right nomargin list-inline mobile-block">
                    <li>${data['general']['openingsuren']['footer']}</li>
                </ul>
            % endif
            Gebouwd door <a href="https://jensw.be" target="_blank">Jensw.be</a>
        </div>
    </div>
</footer>
<!-- /FOOTER -->

</div>
<!-- /wrapper -->


<!-- SCROLL TO TOP -->
<a href="#" id="toTop"></a>


% if self.attr.preload:
    <!-- PRELOADER -->
    <div id="preloader">
        <div class="inner">
            <span class="loader"></span>
        </div>
    </div><!-- /PRELOADER -->
% endif


<!-- JAVASCRIPT FILES -->
<script type="text/javascript">var plugin_path = '/assets/plugins/';</script>
<script src="/assets/plugins/jquery/jquery-2.2.3.min.js"></script>
<script src="/assets/js/scripts.js"></script>

<!-- PAGE SPECIFIC JAVASCRIPT -->
<%block name="script"/>

</body>
</html>
