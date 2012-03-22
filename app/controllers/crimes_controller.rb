class CrimesController < ApplicationController
  before_filter :find_villain

  respond_to :json

  def index
    respond_with @villain.crimes
  end

  def show
    respond_with @villain.crimes.find params[:id]
  end

  def update
    @crime = @villain.crimes.find params[:id]
    @crime.update_attributes params[:crime]

    respond_with @crime
  end

  def create
    @crime = @villain.crimes.create params[:crime]
    respond_with @crime, :location => villain_crimes_url(@villain)
  end

  def destroy
    @crime = @villain.crimes.find params[:id]
    @crime.destroy

    respond_with @crime, :location => villain_crimes_url(@villain)
  end

  protected

  def find_villain
    @villain = Villain.find params[:villain_id]
  end
end
