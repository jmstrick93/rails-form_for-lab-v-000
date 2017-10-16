class SchoolClassesController < ApplicationController

  def index
  end

  def show
  end

  def new

  end

  def create
    @school_class = SchoolClass.new(post_params(:title, :room_number))
    @school_class.save

    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  def update
  end

  private

  def post_params(*args)
    params.require(:school_class).permit(*args)
  end

end
