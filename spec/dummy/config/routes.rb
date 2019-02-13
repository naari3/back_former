# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'root#index'
  get 'tests/save_previous_path_action' => 'tests#save_previous_path_action', as: 'save_previous_path_action'
  get 'tests/redirect_back_former_action' => 'tests#redirect_back_former_action', as: 'redirect_back_former_action'
end
