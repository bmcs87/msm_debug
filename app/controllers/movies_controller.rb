class MoviesController < ApplicationController
  def index
    @movies = Movies.all
  end

  def show
    @movies = Movies.find(params[":id"])
  end

  def new_form
  end

  def create_row
    @movies.title = params[":the_title"]
    @movies.year = params[":the_year"]
    @movies.duration = params[":the_duration"]
    @movies.description = params[":the_description"]
    @movies.image_url = params[":the_image_url"]
    @movies.director_id = params[":the_director_id"]

    @movies.save

    render("show")
  end

  def edit_form
    @movies = Movies.find(params[":id"])
  end

  def update_row
    @movies.title = params[":title"]
    @movies.year = params[":year"]
    @movies.duration = params[":duration"]
    @movies.description = params[":description"]
    @movies.image_url = params[":image_url"]
    @movies.director_id = params[":director_id"]

    render("show")
  end

  def destroy
    @movies = Movies.find(params[":id"])

    @movies.destroy
  end
end
