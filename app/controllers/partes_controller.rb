class PartesController < ApplicationController
  def index
      @Parte = Parte.all
      render json: @Parte
  end
end
