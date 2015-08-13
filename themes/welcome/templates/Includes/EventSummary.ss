<li>
	<% loop $Dates %>
		<% with $StartDateTime %>
		<time class="cbp_tmtime" datetime="$Format(c)">
			<span>$Format(n)/$Format(j)/$Format(Y)</span>
			<span>$Format("g:i A")<% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")<% end_with %><% end_if %></span>
		</time>
		<% end_with %>
	<% end_loop %>
	<div class="cbp_tmicon cbp_tmicon-phone"></div>
	<div class="cbp_tmlabel">
		<h2>$Title</h2>
		<div class="clearfix">
			<% if $Image %>
				<img src="$Image.URL" alt="$Title" width="150" class="right">
			<% end_if %>

			$Content

			<!-- Sponsor & Link to events.uiowa.edu -->
			<% if $Sponsor %>
				<p><strong>Sponsor:</strong><br> $Sponsor </p>
			<% end_if %>

			<!-- Venue -->
			<% if $Venue %>
				<p><strong>Venue</strong><br />
				$Venue.Title<% if $Venue.Address %><br>$Venue.Address<% end_if %></p>
			<% end_if %>

			<!-- Contact Information -->
			<% if $ContactName %>
				<p><strong>Contact Information:</strong><br />
					<% if $ContactEmail %>
						<a href="mailto:$ContactEmail">$ContactName</a>
					<% else %>
						$ContactName
					<% end_if %>
				</p>
			<% end_if %>

		</div>
	</div>
</li>




<!-- Dates
<% loop $Dates %>
	<p class="eventlist-date">
		<% with $StartDateTime %>
			<time itemprop="startDate" datetime="$Format(c)">
				$Format(l), $Format(F) $Format(j)
			</time>
			 <span class="eventlist-time">$Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")
			<% end_with %>
		<% end_if %>
		</span>
		<% if $EndDate %>
			until
			<% with $EndDate %>
				<time itemprop="endDate" datetime="$Format(c)">
					$Format(l), $Format(F) $Format(j)
				</time>
				<span class="eventlist-time">$Format("g:i A")</span>
			<% end_with %>
		<% end_if %>
	</p>
<% end_loop %>
 -->