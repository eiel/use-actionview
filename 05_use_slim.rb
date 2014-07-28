require 'bundler/setup'
Bundler.require(:default)

lookup_context = ActionView::LookupContext.new('./views')
lookup_context.cache = false   # ActionPachk を読まなくて済む魔法

view_context = ActionView::Base.new(lookup_context)
view_context.assign(name: 'eiel')
ret = view_context.render(template: 'slim',
                          prefixes: 'prefix',
                          layout: 'layouts/application')
puts ret

=begin
--
Hello, eiel

--
=end
