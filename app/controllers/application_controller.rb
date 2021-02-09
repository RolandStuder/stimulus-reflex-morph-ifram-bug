class ApplicationController < ActionController::Base
  before_action :create_dummies

  private

  def create_dummies
    session[:dummies] ||= []
  end
end
