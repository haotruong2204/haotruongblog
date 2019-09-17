class AboutsController < ApplicationController
  def show
    @about = About.find_by_id(3)
  end
end
