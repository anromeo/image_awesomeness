class ImagesController < ApplicationController
  before_filter :find_memory

  def index


  end

  def new
    @image = @memory.images.build
  end

  def create
    @image = @memory.images.build(params[:image])

    if @image.save
      flash[:notice] = "Your pic has been added."
      redirect_to memories_path
    else
      flash[:alert] = "Sorry, your pic wasn't added."
      render :action => "new"
    end
  end

  def show
  end

  def destory
  end
  private

  def find_memory
    @memory = Memory.find(params[:memory_id])
  end
end
