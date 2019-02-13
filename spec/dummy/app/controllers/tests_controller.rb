# frozen_string_literal: true

class TestsController < ApplicationController
  before_action :save_previous_path, only: :save_previous_path_action

  def save_previous_path_action; end

  def redirect_back_former_action
    redirect_back_former
  end
end
