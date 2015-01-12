require 'sinatra'

get '/tortilla/rice' do # the server is receiving the request here, not making it. when it gets that string('/'), it will execute the block.
  mmmm = "MMMMM"
  erb :index,locals: {name:mmmm}
end

get '/tortilla/guac' do
  aaah = 'AAAH'
  erb :index,locals: {name:aaah}
end

get '/tortilla/:id' do
  path = params[:id].downcase
  erb :index,locals: {name:"<p>Well, #{path} is good on a tortilla, too.</p>"}
end

get '*' do
  no = '<h3>Sorry, we only serve burritos here.<h3>'
  erb :index,locals: {name:no}
end

# anything inside your erb has to be passed into locals.
# instead of a file, you could give a string: erb "hello, Joel"

# get '/' do
#   "<h3>Hello Joel<h3>"
# end
