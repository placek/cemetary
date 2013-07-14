class PartsController < InheritedResources::Base
  def show
    @part = Part.find(params[:id])
    @sepulchres = @part.sepulchres.search(params[:search]).per_page_kaminari(params[:page])
    respond_with(@part)
  end
end
