# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Fruits', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/fruits'
      expect(response).to have_http_status(:success)
    end
  end
end
