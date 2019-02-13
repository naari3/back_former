# frozen_string_literal: true

module BackFormer
  module Redirecting
    def redirect_back_former(path = root_path, options = {})
      redirect_to(session[:back_former_previous_path] || path, options)
    end

    def save_previous_path
      session[:back_former_previous_path] = request.path
    end
  end
end
