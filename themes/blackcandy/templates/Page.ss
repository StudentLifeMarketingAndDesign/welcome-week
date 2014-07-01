<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <% base_tag %>
        <title>
            <% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title
        </title>
    </head>
    <body>
        $MetaTags(false)
        <meta http-equiv="Content-Type"
              content="text/html; charset=ISO-8859-1" /><% require themedCSS(styles) %><!-- -->
         <% require themedCSS(form) %> <% require themedCSS(ui) %><style type="text/css">
/*<![CDATA[*/

        /*** set the width and height to match your images **/
        #slideshow {
        position:relative;
        height:350px;
        }
        #slideshow IMG {
        position:absolute;
        top:0;
        left:0;
        z-index:8;
        opacity:0.0;
        }
        #slideshow IMG.active {
        z-index:10;
        opacity:1.0;
        }
        #slideshow IMG.last-active {
        z-index:9;
        }
        li {
        font: normal 11px/14px Arial, Helvetica, sans-serif;
        text-align:justify;
        padding-right:40px;
        margin-left:-20px;

        }
        /*]]>*/
        </style><style type="text/css"
               media="screen">
/*<![CDATA[*/
        <!--
        .style1 {font-size: 18%}
        .style3 {font-size: 18px}
        a {
        text-decoration:underline;
        color:black;}
        .style13 {color: #000000}
        -->
        /*]]>*/
        </style>
        <link href='http://fonts.googleapis.com/css?family=Neuton:700'
              rel='stylesheet'
              type='text/css' />
        <div id="bodywrap">
            <!--a name="#tabs-4"></a-->
            <div id="header">
                <div id="logo">
                    <div id="nav">
                        <a href="http://www.uiowa.edu/"
                             target="_blank"><img class="events"
                             src="$ThemeDir/images/uiowa.png"
                             width="282"
                             height="47"
                             alt="University of Iowa Logo" /></a> <!-- themes/welcome/ -->
                        <ul id="nav-one"
                            class="nav">
                            <% control Menu(1) %>
                            <li>
                                <a href="$Link">$MenuTitle</a>
                            </li><% end_control %>
                        </ul>
                        <div id="dates">
                            AUGUST 24, 2014 - AUGUST 31, 2014
                        </div>
                    </div><!--end nav--><a href="{$BaseHref}"><img class="logo"
                         src="$ThemeDir/images/logo.png" alt="Welcome Week Logo" /></a>
                </div><!--end logo-->
            </div><!--end header-->
            <div id="bottom_wrapper">
                <div class="demo">
                    $Layout
                </div><!-- End demo -->
            </div>
        </div><!--end bodywrap-->
        <div id="footer">
            <img src="$ThemeDir/images/newlogo_new.png"
                 width="119"
                 height="142"
                 class="footer-logo" />
            <p>
                &copy; <a href="http://imu.uiowa.edu/">The University of Iowa</a> $Now.Year. All rights reserved.
            </p>
            <ul>
                <% control Menu(1) %>
                <li>
                    <a href="$Link">$MenuTitle</a>
                </li><% end_control %>
            </ul>
        </div><!--end footer-->
<script type="text/javascript"
              src="themes/blackcandy/js/jquery-1.3.2.js">
</script> <script type="text/javascript"
              src="themes/blackcandy/js/ui.core.js">
</script> <script type="text/javascript"
              src="themes/blackcandy/js/ui.tabs.js">
</script>         
<script type="text/javascript">
$(function() {
	$("#tabs").tabs();
});
</script>

		<script type="text/javascript">
		//<![CDATA[
		
		        var _gaq = _gaq || [];
		        _gaq.push(['_setAccount', 'UA-426753-27']);
		        _gaq.push(['_trackPageview']);
		
		        (function() {
		        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		        })();
		
		        //]]>
		        </script>
    </body>
</html>
