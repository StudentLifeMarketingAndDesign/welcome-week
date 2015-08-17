<main class="container main" role="main">
	<div class="content clearfix">

		<h2 class="text-center">Schedule of Events</h2>
		<br />
		<div class="main">
			<ul class="cbp_tmtimeline">
				<% loop $EventListByDate("2015-08-27") %>
					<% include EventSummary %>
				<% end_loop %>
			</ul>
		</div>


	</div>
</main>