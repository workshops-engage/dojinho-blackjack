require 'machinist/active_record'

# Add your blueprints here.
#
# e.g.
#   Post.blueprint do
#     title { "Post #{sn}" }
#     body  { "Lorem ipsum..." }
#   end

Game.blueprint do
	name { "Game #{sn}" }
  # Attributes here
end

Round.blueprint do
  # Attributes here
end
