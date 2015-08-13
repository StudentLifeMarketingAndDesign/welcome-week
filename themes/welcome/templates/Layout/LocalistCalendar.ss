<main class="container main" role="main">
	<div class="content clearfix">

		<h2>Saturday, August 15</h2>
		<div class="main">
			<ul class="cbp_tmtimeline">
				<% loop $EventListByDate("2015-08-15") %>
					<% include EventSummary %>
				<% end_loop %>

				<% loop $EventListByDate("2015-08-16") %>
					<% include EventSummary %>
				<% end_loop %>

				<% loop $EventListByDate("2015-08-18") %>
					<% include EventSummary %>
				<% end_loop %>
			</ul>
		</div>


	</div>
</main>