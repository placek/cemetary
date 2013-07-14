class SepulchresController < InheritedResources::Base
  def show
    @part = Part.find(params[:part_id])
    @quarter = @part.quarters.find(params[:quarter_id])
    @sepulchre = @quarter.sepulchres.find(params[:id])
    respond_with(@sepulchre)
  end
end
