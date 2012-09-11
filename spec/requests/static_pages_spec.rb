require 'spec_helper'

describe 'StaticPages' do
  describe 'GET /pages/about' do
    before { get static_page_path(:about) }
    it { response.status.should be(200) }
    it { response.should render_template(:about) }
  end
end
