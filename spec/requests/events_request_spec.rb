require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  before :each do
    login('recca')
  end
  context 'Events' do
    it '#index should display the index page' do
      get :index
      expect(response).to render_template('index')
    end

    it 'should display the form page' do
      get :new
      expect(assigns(:event)).to be_a_new(Event)
    end
  end
end
