require 'bundler/setup'
Bundler.require(:default)

view_context = ActionView::Base.new
view_context.assign(name: 'eiel')
ret = view_context.render(inline: 'Hello, <%= @name %>') # => Hello, eiel
puts ret
