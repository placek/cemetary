class SepulchresController < InheritedResources::Base
  before_filter :load_part

  def index
    @sepulchres = @part.sepulchres.search(params[:search])
    @title = @part.name
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @sepulchres }
    end
  end

  def show
    @sepulchre = @part.sepulchres.find(params[:id])
    @title = @sepulchre.decedent
    respond_with(@sepulchre)
  end

  protected

  def load_part
    @part = Part.find(params[:part_id])
  end
end
