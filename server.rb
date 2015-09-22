require 'sinatra'
require 'cabocha'

helpers do
  def html_safe(text)
    Rack::Utils.escape_html(text)
  end
end

get '/' do
  parser = CaboCha::Parser.new
  tree = parser.parse(params["q"])
  @result = tree.toString(CaboCha::CABOCHA_FORMAT_XML)
  erb :index
end

__END__

@@index
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>API</title>
  <style>pre { font: normal 14px/20px courier; }</style>
</head>
<body>
  <pre><code>
<%= html_safe @result %>
</code></pre>
</body>
</html>
