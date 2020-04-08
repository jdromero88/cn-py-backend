class TitulosController < ApplicationController
  def index
    @titulos = Titulo.all
    render json: @titulos
  end

  def show
    @titulo = Titulo.find params[:id]
    render json: @titulo
  end

  def create
    @titulo = Titulo.create numero: params[:numero], titulo: params[:titulo], parte_id: params[:poarte_id]
  end

  def update
    @titulo = Titulo.find params[:id]
    # do something here to update
    if @titulo
      @titulo.update! titulo_strong_params
      render json: @titulo
    else
      render json: {
        error:true,
        message:'Something went wrong.',
      }
    end
  end

  def destroy
    @titulo = Titulo.find params[:id]
    # do something here to delete the titulo
    if @titulo
      @titulo.destroy
      render json: {
        error:false,
        message: 'Success'
      }
    else
      render json:{
        error:true,
        message:'Something went wrong.',
      }
    end
  end

  private
    def titulo_strong_params
      params.require(:titulo).permit(
        :numero,
        :titulo,
        :partes => []
      )
    end
end
