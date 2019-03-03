# frozen_string_literal: true

RSpec.describe Admin::RevenueController, type: :controller do
  let!(:user) { create(:user) }
  let!(:admin) { create(:user, role: :admin) }

  describe 'GET #show' do
    it 'allows admin to receive total revenue' do
      sign_in_as(admin)
      get :show
      expect(response).to be_successful
    end
  end
end
