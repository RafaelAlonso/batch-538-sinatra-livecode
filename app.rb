require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/show/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end

get "/create_restaurant" do
  @restaurant = Restaurant.create(
    name: params[:name],
    address: params[:address],
    category: params[:category]
  )

  redirect "/show/#{@restaurant.id}"
end
