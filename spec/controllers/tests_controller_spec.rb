# frozen_string_literal: true

require 'rails_helper'

describe TestsController, type: :controller do
  describe '#save_previous_path' do
    it 'save path in session' do
      get :save_previous_path_action
      expect(session[:back_former_previous_path]).to eq save_previous_path_action_path
    end
  end

  describe '#redirect_back_former' do
    it 'redirect to session[:back_former_previous_path]' do
      session[:back_former_previous_path] = save_previous_path_action_path
      get :redirect_back_former_action
      expect(response).to redirect_to save_previous_path_action_path
    end
  end
end
