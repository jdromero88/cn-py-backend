class PartesController < ApplicationController
  def index
    @partes = Parte.all
    render json: @partes
  end

  def show
    @parte = Parte.find params[:id]
    render json: @parte
  end
end
