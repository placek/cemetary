require 'spec_helper'

describe "Home" do
  describe "GET /" do
    before { get root_path }
    it { response.status.should be(200) }
    it { response.should render_template(:index) }
  end
end
