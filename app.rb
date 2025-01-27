require "sinatra"
require "sinatra/reloader"

get("/") do
  erb :home
end

get("/process_roll") do
  @dice_count = params[:dice].to_i
  @sides = params[:sides].to_i

  @rolls = Array.new(@dice_count) { rand(1..@sides) } 

  erb :process_roll
end
