class MoviesController < ApplicationController

  # GET: /movies
  get "/movies" do
    @movies = Movie.all
    erb :"/movies/index.html"
  end

  # GET: /movies/new
  get "/movies/new" do
    erb :"/movies/new.html"
  end

  # POST: /movies
  post "/movies" do
    movie = Movie.new(name: params[:movie][:name], genre: params[:movie][:genre], release_date: params[:movie][:release_date])
    params[:movie][:director].each do |director|
      director = Director.new(director)
      director.movies = movie
      director.save
    end
    params[:movie][:actors].each do |actor|
      actor = Actor.new(actor)
      actor.movies = movie
      actor.save
    end
    redirect "/movies"
  end

  # GET: /movies/5
  get "/movies/:id" do
    @movie = Movie.find(params[:id])
    erb :"/movies/show.html"
  end

  # GET: /movies/5/edit
  get "/movies/:id/edit" do
    erb :"/movies/edit.html"
  end

  # PATCH: /movies/5
  patch "/movies/:id" do
    redirect "/movies/:id"
  end

  # DELETE: /movies/5/delete
  delete "/movies/:id/delete" do
    redirect "/movies"
  end
end
