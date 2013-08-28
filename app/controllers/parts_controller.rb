class PartsController < InheritedResources::Base
  def show
    @part = Part.find(params[:id])
    @sepulchres = @part.sepulchres.search(params[:search])
    respond_with(@part)
  end
end
