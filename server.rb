require 'sinatra'
require 'cabocha'

get '/' do
  parser = CaboCha::Parser.new
  tree = parser.parse(params["q"])
  @result = tree.toString(CaboCha::OUTPUT_RAW_SENTENCE)
  erb :index
end

__END__

@@index
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title></title>
  <style>pre { font: normal 14px/20px courier; }</style>
</head>
<body>
  <pre>
<%= @result %>
</pre>
</body>
</html>
