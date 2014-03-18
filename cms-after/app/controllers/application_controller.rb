class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Mercury::Authentication

  helper_method :is_editing?
  layout :layout_with_mercury

  private
  def is_editing?
    cookies[:editing] == 'true' && can_edit?
  end

  def layout_with_mercury
    # if we're not already within mercury, and the user is able, load the mercury template.
    # otherwise use the default application template.
    !params[:mercury_frame] && is_editing? ? 'mercury' : 'application'
  end

end
