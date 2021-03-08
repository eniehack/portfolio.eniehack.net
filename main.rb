require 'org-ruby'
require 'tilt'

template = Tilt.new './templates/index.html.erb'
puts template.render {
  file = IO.read "./srcs/index.org"
  Orgmode::Parser.new(file).to_html
}


