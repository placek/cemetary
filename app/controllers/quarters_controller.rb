class QuartersController < InheritedResources::Base
  def show
    @part = Part.find(params[:part_id])
    @quarter = @part.quarters.find(params[:id])
    @sepulchres = @quarter.sepulchres.search(params[:search])
    respond_with(@quarter)
  end
end
