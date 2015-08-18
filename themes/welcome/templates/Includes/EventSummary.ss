<li>
	<% loop $Dates %>

		<time class="cbp_tmtime" datetime="$Format(c)">
			<span><% with $StartDateTime %>$Format(n)/$Format(j)/$Format(Y)<% end_with %></span>
			<span>
				<% with $StartDateTime %>
					 $Format("g:i A")<% end_with %><% if $EndTime %><% with $EndTime %>&ndash;$Format("g:i A")
					<% end_with %>
				<% end_if %>
				<% if $EndDate %>
					until
					<% with $EndDate %>
						$Format("g:i A")
					<% end_with %>
				<% end_if %>
			</span>
		</time>

	<% end_loop %>
	<div class="cbp_tmicon cbp_tmicon-time"></div>
	<div class="cbp_tmlabel">
		<h2>$Title</h2>
		<div class="clearfix">
			<% if $Image %>
				<img data-original="$Image.URL" alt="$Title" class="lazy event-img">
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
