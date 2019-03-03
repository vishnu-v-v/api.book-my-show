# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BookingsController, type: :controller do
  let(:user) { create(:user) }
  let(:show) { create(:show) }
  let(:seats) { create_list(:seat, 3, show: show) }
  before { sign_in_as(user) }

  describe 'POST #create' do
    it 'returns a success response' do
      post :create
      expect(response).to be_successful
      expect(response_json).to eq user.as_json(only: %i[id email role])
    end
  end
end
