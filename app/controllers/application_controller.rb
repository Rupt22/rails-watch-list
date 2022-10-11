class ApplicationController < ActionController::Base
  def about_page
  end

  def static_page
  end

  def another_page
  end

  def home
  end

  layout false, only: [:home]
end
