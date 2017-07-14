class StorylinesController < ApplicationController
  def show
    @resource = Storyline.find(params[:id])
  end

  def new
  end

  def create
    @resource = Storyline.new(resource_params)
    @resource.story = StoryService.new(resource_params.to_h).call

    if @resource.save
      flash[:notice] = t(:success)
      redirect_to @resource
    else
      flash[:errors] = t(:failure)
      render :new
    end
  end

  def index
    @resources = Storyline.all
  end

  def resource_params
    params.require(:storyline).permit(
      :plot,
      :hero,
      :location,
      :sidekick,
      :starship,
      :title,
      :vehicle,
      :victim,
      :villain
    )
  end
end
