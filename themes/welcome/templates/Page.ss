<!doctype html>
<!--[if lt IE 9]>         <html lang="en" class="lt-ie9 no-js"> <![endif]-->
<!--[if gt IE 8]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
<% base_tag %>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta charset="utf-8">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$SiteConfig.Title</title>
<!--

MMMMMMMM               MMMMMMMM                               DDDDDDDDDDDDD
M:::::::M             M:::::::M                               D::::::::::::DDD
M::::::::M           M::::::::M                               D:::::::::::::::DD
M:::::::::M         M:::::::::M            +++++++            DDD:::::DDDDD:::::D
M::::::::::M       M::::::::::M            +:::::+              D:::::D    D:::::D
M:::::::::::M     M:::::::::::M            +:::::+              D:::::D     D:::::D
M:::::::M::::M   M::::M:::::::M      +++++++:::::+++++++        D:::::D     D:::::D
M::::::M M::::M M::::M M::::::M      +:::::::::::::::::+        D:::::D     D:::::D
M::::::M  M::::M::::M  M::::::M      +:::::::::::::::::+        D:::::D     D:::::D
M::::::M   M:::::::M   M::::::M      +++++++:::::+++++++        D:::::D     D:::::D
M::::::M    M:::::M    M::::::M            +:::::+              D:::::D     D:::::D
M::::::M     MMMMM     M::::::M            +:::::+              D:::::D    D:::::D
M::::::M               M::::::M            +++++++            DDD:::::DDDDD:::::D
M::::::M               M::::::M                               D:::::::::::::::DD
M::::::M               M::::::M                               D::::::::::::DDD
MMMMMMMM               MMMMMMMM                               DDDDDDDDDDDDD

                              http://studentlife.uiowa.edu/md/
-->
<!-- Typekit Fonts -->
<% include Typekit %>
<!-- CSS -->
<link rel="stylesheet" href="{$ThemeDir}/css/master.css">
<link rel="stylesheet" href="division-bar/css/_division-bar.css" />
<script src="{$ThemeDir}/js/plugins/modernizr.custom.js"></script>
<!-- JS -->
<!--[if lt IE 9]>
   <script src="{$ThemeDir}/js/ie/html5shiv.js"></script>
   <script src="{$ThemeDir}/js/ie/respond.min.js"></script>
<![endif]-->
<!--[if gte IE 9]>
  <style type="text/css">
    .gradient {
       filter: none;
    }
  </style>
<![endif]-->
</head>

<body class="$ClassName">
	<a id="skiplink" href="#main-content">Skip to main content</a>
	<% include DivisionBar %>

	<article id="index" data-section="">

	</article>
	<article id="about">

	</article>

	<section class="main" id="main-content" tabindex="-1" role="main">
		$Layout
	</section>

	<article id="community" data-section="">

	</article>

	<% include Footer %>


	<!-- JS -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<script src="{$ThemeDir}/js/build/production.min.js"></script>
	<% include GoogleAnalytics %>

</body>
</html>