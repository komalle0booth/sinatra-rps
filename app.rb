require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:welcome)
end

get("/rock") do
  @we_played = "rock"
  
  @op_played = ["rock", "paper", "scissors"].sample
    
  if @we_played == @op_played
    @result = "We tied!"
  elsif @we_played == "rock" && @op_played == "scissors"
    @result = "We won!"
  elsif @we_played == "rock" && @op_played == "paper"
    @result = "We lost!"
  end 

  erb(:rock)
end

get("/paper") do
  @we_played = "paper"
  
  @op_played = ["rock", "paper", "scissors"].sample
    
  if @we_played == @op_played
    @result = "We tied!"
  elsif @we_played == "paper" && @op_played == "scissors"
    @result = "We lost!"
  elsif @we_played == "paper" && @op_played == "rock"
    @result = "We won!"
  end 

  erb(:paper)
end

get("/scissors") do
  @we_played = "scissors"
  
  @op_played = ["rock", "paper", "scissors"].sample
    
  if @we_played == @op_played
    @result = "We tied!"
  elsif @we_played == "scissors" && @op_played == "paper"
    @result = "We won!"
  elsif @we_played == "scissors" && @op_played == "rock"
    @result = "We lost!"
  end 

  erb(:scissors)
end
