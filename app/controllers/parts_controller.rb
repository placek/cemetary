class PartsController < InheritedResources::Base
  layout "parts"
  def index
    @parts = Part.all
    respond_with(@parts)
  end
end
