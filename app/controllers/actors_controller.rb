class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actors = Actor.find(params[":id"])
  end

  def new_form
  end

  def create_row
    @actors = Actor.new
    @actors.dob = params[":dob"]
    @actors.name = params[":name"]
    @actors.bio = params[":bio"]
    @actors.image_url = params[":image_url"]

    @actors.save

    render("show")
  end

  def edit_form
    @actors = Actor.find(params[":id"])
  end

  def update_row
    @actors = Actor.find(params[":id"])

    @actors.dob = params[":dob"]
    @actors.name = params[":name"]
    @actors.bio = params[":bio"]
    @actors.image_url = params[":image_url"]

    @actors.save

    render("show")
  end

  def destroy
    @actors = Actor.find(params[":id"])

    @actors.destroy
  end
end
