# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) { create(:user) }
  let(:show) { create(:user) }
  let(:seats) { create(:user) }
  
  before { sign_in_as(user) }

  describe 'GET #me' do
    it 'returns a success response' do
      get :me
      expect(response).to be_successful
      expect(response_json).to eq user.as_json(only: %i[id email role])
    end
  end
end
