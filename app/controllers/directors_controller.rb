class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find(params[":id"])
  end

  def new_form
  end

  def create_row
    @directors = Director.new
    @directors.dob = params[":dob"]
    @directors.name = params[":name"]
    @directors.bio = params[":bio"]
    @directors.image_url = params[":image_url"]

    @directors.save

    render("show")
  end

  def edit_form
    @directors = Director.find(params[":id"])
  end

  def update_row
    @directors = Director.find(params[":id"])

    @directors.dob = params[":dob"]
    @directors.name = params[":name"]
    @directors.bio = params[":bio"]
    @directors.image_url = params[":image_url"]

    @directors.save

    render("show")
  end

  def destroy
    @directors = Director.find(params[":id"])

    @directors.destroy
  end
end
