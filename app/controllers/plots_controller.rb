class PlotsController < ApplicationController
  def show
    @resource = Plot.find(params[:id])
  end

  def new
  end

  def create
    @resource = Plot.new(resource_params)
    @resource.story = StoryService.new(resource_params.to_h).call

    if @resource.save
      flash[:notice] = t(:plot_saved)
      redirect_to @resource
    else
      flash[:errors] = t(:plot)
      render :new
    end
  end

  def index
    @resources = Plot.all
  end

  def resource_params
    params.require(:plot).permit(
      :category,
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
