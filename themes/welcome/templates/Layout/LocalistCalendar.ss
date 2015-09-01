<main class="container main" role="main">
	<div class="content clearfix">
		<% if $EventList %>
			<h2 class="text-center">Schedule of Events</h2>
			<br />
			<div class="main">
				<ul class="cbp_tmtimeline">
					<% loop $EventList %>
						<% include EventSummary %>
					<% end_loop %>
				</ul>
			</div>
		<% else %>
		<p class="text-center">Thanks for participating in Welcome Week!</p>
		<% end_if %>
	</div>
</main>