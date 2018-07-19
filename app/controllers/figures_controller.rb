require 'pry'

class FiguresController < ApplicationController

  get '/figures' do

    @figures = Figure.all
    erb :"figures/index"
  end

  get '/figures/new' do
    erb :"figures/new"
  end

  post '/figures' do

    @figure = Figure.create(name: params[:figure[:name]])

    redirect to "/figures/#{@figure.id}"
  end

  get "/figures/:id" do
    @figure = Figure.find(params[:id])
    erb :"figures/show"
  end

end
