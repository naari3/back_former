# frozen_string_literal: true

require 'rails_helper'

describe ApplicationController do
  describe 'back_former methods' do
    %i[redirect_back_former save_previous_path].each do |name|
      it "has the #{name} method" do
        expect(ApplicationController.new).to respond_to name
      end
    end
  end
end
