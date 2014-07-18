require 'bundler/setup'
Bundler.require(:default)

lookup_context = ActionView::LookupContext.new('./views')
lookup_context.cache = false   # ActionPack を読まなくて済む魔法

view_context = ActionView::Base.new(lookup_context)
view_context.assign(name: 'eiel')
# prefix はないとテンプレートが見つけられない
ret = view_context.render(template: 'hoge', prefixes: 'prefix') # => Hello, eiel
puts ret
