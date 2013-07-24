<!--<div class="ui-tabs ui-widget ui-widget-content ui-corner-all" id="tabs">
<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
<li class="ui-state-default ui-corner-top ui-tabs-selected ui-state-active"><a href="#tabs-1">SATURDAY - 21</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-2">SUNDAY - 22</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-3">MONDAY - 23</a></li>
<li class="ui-state-default ui-corner-top"><a class="selected" href="#tabs-4">TUESDAY - 24</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-5">WEDNESDAY - 25</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-6">THURSDAY - 26</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-7">FRIDAY - 27</a></li>
<li class="ui-state-default ui-corner-top"><a href="#tabs-8">SATURDAY - 28</a></li>
</ul>-->

<div class="ui-tabs ui-widget ui-widget-content ui-corner-all" id="tabs">
<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
<% control Children %><li class="ui-state-default ui-corner-top <% if First %>ui-tabs-selected ui-state-active<% end_if %>"><a href="#tabs-$ID">$MenuTitle</a></li>
<% end_control %>
</ul>

<% control Children %><!-- controlling each day -->
      <div id="tabs-$ID">
      <div id="event">
        <p class="date"><span>Events</span> - <strong>$Title</strong></p>
        
    
        <% if Pos = 1 %><!-- Sunday -->
            <% control Children %> <!-- controlling events inside each day -->
				<div>
                <% if First %><blockquote class="sunday"><% end_if %>
                
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                
                <h2>$Time </h2><h3>&bull; $Location</h3>
                
                $Content
                </p>
                
				<% if First %></blockquote><% end_if %>
                <% if AboveImage %>$AboveImage.SetWidth(500)<% end_if %>
                <% if BelowImage %>$BelowImage.SetWidth(500)<% end_if %>
                $Image3.SetWidth(500)
                </div>
            <% end_control %>
            
        <% else_if Pos = 2 %><!-- Monday -->
        
        	                
            <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote class="monday"><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage.SetWidth(380)<% end_if %>
                <% if First %></blockquote><% end_if %>
                
                $Image3.SetWidth(318)
                
            <% end_control %>
        
        
        
        <% else_if Pos = 3 %><!-- Tuesday -->
        
        	      
            <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote class="tuesday"><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage.SetWidth(400)<% end_if %>
                <% if First %></blockquote><% end_if %>
            <% end_control %>
            
        
        
        
        <% else_if Pos = 4 %><!-- Wednesday -->
        
        	      
            <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage.SetWidth(400)<% end_if %>
                <% if First %></blockquote><% end_if %>
            <% end_control %>
            
        
        <% else_if Pos = 5 %><!-- Thursday -->
        
        	      
            <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage<% end_if %>
                <% if First %></blockquote><% end_if %>
            <% end_control %>
            
         
         
         
        <% else_if Pos = 6 %><!-- Friday -->
        
        	      
            <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote class="friday"><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage.SetWidth(390)<% end_if %>
                
               
                <% if First %></blockquote><% end_if %>
                
                <% if Image3 %>$Image3<% end_if %>
                 
            <% end_control %>
            
        
        <% else_if Pos = 7 %><!-- Saturday -->
        
        
        	 <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage<% end_if %>
                <% if First %></blockquote><% end_if %>
            <% end_control %>
            
        
        <% else_if Pos = 8 %><!-- Sunday -->
        
        
        	 <% control Children %> <!-- controlling events inside each day -->
                <% if First %><blockquote><% end_if %>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage<% end_if %>
                <% if First %></blockquote><% end_if %>
            <% end_control %>
        
        
        <% end_if %>



        

      </div>
      </div>
<% end_control %>

</div>
<script type="text/javascript">
$(function() {
	$("#tabs").tabs();
});
</script>