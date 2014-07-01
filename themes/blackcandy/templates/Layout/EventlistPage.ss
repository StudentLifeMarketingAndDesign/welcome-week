<div class="ui-tabs ui-widget ui-widget-content ui-corner-all" id="tabs">
<ul class="ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all">
<% control Children %><li class="ui-state-default ui-corner-top <% if First %>ui-tabs-selected ui-state-active<% end_if %>"><a href="#tabs-$ID">$MenuTitle</a></li>
<% end_control %>
</ul>

<% control Children %><!-- controlling each day -->
      <div id="tabs-$ID">
      <div id="event">
        <p class="date"><span>Events</span> - <strong>$Title</strong></p>
       
            <% control Children %> <!-- controlling events inside each day -->
				<% include EventBlock %>	       
            <% end_control %>
            
      </div>
      </div>
<% end_control %>

</div>
