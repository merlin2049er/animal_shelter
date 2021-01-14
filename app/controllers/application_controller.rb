class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  SITE_NAME = 'Animal Shelter'
  add_breadcrumb SITE_NAME, :root_path

end
