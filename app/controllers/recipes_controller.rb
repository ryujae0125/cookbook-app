class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @recipe = Recipe.new(
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image: params[:image]
    )
    @recipe.save
    render "create.html.erb"
  end

  def show
    @recipe = Recipe.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @recipe = Recipe.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @recipe = Recipe.find_by(id: params[:id])
    @recipe.update(
      title: params[:title],
      chef: params[:chef],
      ingredients: params[:ingredients],
      directions: params[:directions],
      prep_time: params[:prep_time],
      image: params[:image]
    )
    render "update.html.erb"
  end
end
