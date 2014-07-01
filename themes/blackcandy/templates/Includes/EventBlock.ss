<blockquote>
                <% if AboveImage %>$AboveImage<% end_if %><br />
                <% if Official %><% end_if %>
                <p><h1<% if Official %><% else %> class="gray"<% end_if %>>$Title</h1>
                <hr />
                <h2>$Time </h2><h3>&bull; $Location</h3>
                $Content
                </p>
                <% if BelowImage %>$BelowImage.SetWidth(400)<% end_if %>
                <% if Image3 %>$Image3.SetWidth(400)<% end_if %>
                </blockquote>     