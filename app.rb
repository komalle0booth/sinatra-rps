require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  @we_played = "Rock"
  
  @op_played = ["Rock", "Paper", "Scissors"].sample
    
  if @we_played == @op_played
    @result = "We tied!"
  elsif @we_played == "Rock" && @op_played == "Scissors"
    @result = "We won!"
  elsif @we_played == "Rock" && @op_played == "Paper"
    @result = "We lost!"
  end 

  erb(:rock)
end
