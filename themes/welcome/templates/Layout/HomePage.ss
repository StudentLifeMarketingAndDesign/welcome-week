<div class="container main-content">
	<div class="content clearfix">
		<div class="article">

			<h1>$Title</h1>
			$Form

			<!-- Loop Events -->
			<ul class="eventlist">
				<% loop $EventList %>
					<li class="">
						<h3 class="eventlist-title">$Title</h3>
						<!--
						<% if $Image %>
							<a href="$Link" class="eventlist-img">
								<img src="$Image.URL" alt="$Title">
							</a>
						<% end_if %>
						-->

						<!-- Dates -->
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

						<!-- Description -->
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

					</li>
				<% end_loop %>
			</ul>

		</div>
	</div>
</div><!-- end .container -->