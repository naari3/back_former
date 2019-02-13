# frozen_string_literal: true

module BackFormer
  class Engine < ::Rails::Engine
    config.generators do |g|
      g.test_framework :rspec, fixture: false
      g.assets false
      g.helper false
    end

    initializer 'back_former.methods' do |_app|
      ActiveSupport.on_load :action_controller do
        include BackFormer::Redirecting
      end
    end
  end
end
