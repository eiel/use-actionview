require 'bundler/setup'
Bundler.require(:default)

ret = ActionView::Base.new.render(inline: 'Hello, World!') # => Hello, world
puts ret
