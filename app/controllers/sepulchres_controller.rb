class SepulchresController < InheritedResources::Base
  before_filter :load_part

  def index
    @sepulchres = @part.sepulchres
    respond_with(@sepulchres)
  end

  def show
    @sepulchre = @part.sepulchres.find(params[:id])
    respond_with(@sepulchre)
  end

  protected

  def load_part
    @part = Part.find(params[:part_id])
  end
end
