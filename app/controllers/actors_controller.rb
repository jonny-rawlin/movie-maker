class ActorsController < ApplicationController

  # GET: /actors
  get "/actors" do
    @actors = Actor.all
    erb :"/actors/index.html"
  end

  # GET: /actors/new
  get "/actors/new" do
    erb :"/actors/new.html"
  end

  # POST: /actors
  post "/actors" do
    actor = Actor.new(name: params[:actor][:name], age: params[:actor][:age], nationality: params[:actor][:nationality])
    redirect "/actors"
  end

  # GET: /actors/5
  get "/actors/:id" do
    @actor = Actor.find(params[:id])
    erb :"/actors/show.html"
  end

  # GET: /actors/5/edit
  get "/actors/:id/edit" do
    erb :"/actors/edit.html"
  end

  # PATCH: /actors/5
  patch "/actors/:id" do
    redirect "/actors/:id"
  end

  # DELETE: /actors/5/delete
  delete "/actors/:id/delete" do
    redirect "/actors"
  end
end
