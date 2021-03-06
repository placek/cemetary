class QuartersController < InheritedResources::Base
  def show
    @part = Part.find(params[:part_id])
    @quarter = @part.quarters.find(params[:id])
    @sepulchres = @quarter.sepulchres.search(params[:search]).per_page_kaminari(params[:page])
    respond_with(@quarter) do |format|
      format.html
      format.js
    end
  end
end
