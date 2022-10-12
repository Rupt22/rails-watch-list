class ApplicationController < ActionController::Base
  def about_page
  end

  def static_page
  end

  def another_page
  end

  def home
    @skip_navbar = true
  end

end
