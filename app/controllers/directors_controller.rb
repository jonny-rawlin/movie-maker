class DirectorsController < ApplicationController

  # GET: /directors
  get "/directors" do
    @directors = Director.all
    erb :"/directors/index.html"
  end

  # GET: /directors/new
  get "/directors/new" do
    erb :"/directors/new.html"
  end

  # POST: /directors
  post "/directors" do
    redirect "/directors"
  end

  # GET: /directors/5
  get "/directors/:id" do
    @director = Director.find(params[:id])
    erb :"/directors/show.html"
  end

  # GET: /directors/5/edit
  get "/directors/:id/edit" do
    erb :"/directors/edit.html"
  end

  # PATCH: /directors/5
  patch "/directors/:id" do
    redirect "/directors/:id"
  end

  # DELETE: /directors/5/delete
  delete "/directors/:id/delete" do
    redirect "/directors"
  end
end
