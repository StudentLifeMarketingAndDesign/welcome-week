<main class="container main" role="main">
	<div class="content clearfix">

		<section id="main-content" tabindex="-1">
			<h1>Schedule</h1>
			$Form

			<h2>August 8th</h1>
			<ul>
				<% loop $EventListByDate("2015-08-14") %>
					<li>$Title</li>
				<% end_loop %>
			</ul>

			<h2>August 21st</h2>
			<ul>
				<% loop $EventListByDate("2015-08-21") %>
					<li>$Title</li>
				<% end_loop %>
			</ul>


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

						<div class="event-info">
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
						</div>

					</li>
				<% end_loop %>
			</ul>
		</section>
	</div>
</main>