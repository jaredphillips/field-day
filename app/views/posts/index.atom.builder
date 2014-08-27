atom_feed do |feed|
	feed.title "Field Day Terrariums Blog by Rachel Borgh"
	@posts.each do |post|
		feed.entry(post) do |entry|
			entry.title 	post.title
			entry.content post.byline
			# entry.updated	post.created_at
		end
	end
end