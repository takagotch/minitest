class PasswordResetController < ApplicationController
  before_action :get_user, only: [:edit, :update]
  before_action :valid_user, only: [:edit, :update]
  before_action :check_expiration, only:[:edit, :update]

  def new
  end

  def create
  end

  def edit
  end

  def updaete
  end

  private
  def user_params
  end

  def get_user
  end

  def check_expiration
  end
end

