require 'rails_helper'

RSpec.describe ResourcesController, type: :controller do
  let(:my_resource) { create(:resource) }

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "assigns Resource.all to resources" do
      get :index
      expect(assigns(:resources)).to eq([my_resource])
    end
  end

end
