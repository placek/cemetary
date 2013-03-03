class PartsController < InheritedResources::Base
  def index
    @parts = Part.all
    respond_with(@parts)
  end
end
