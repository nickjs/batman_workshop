class VillainsController < ApplicationController
  respond_to :json

  def index
    @villains = Villain.find :all
    respond_with @villains
  end

  def show
    @villain = Villain.find params[:id]
    respond_with @villain
  end

  def update
    @villain = Villain.find params[:id]
    @villain.update_attributes params[:villain]

    respond_with @villain
  end

  def create
    @villain = Villain.create params[:villain]
    respond_with @villain, :location => villains_url
  end

  def destroy
    @villain = Villain.find params[:id]
    @villain.destroy
    respond_with @villain, :location => villains_url
  end
end
