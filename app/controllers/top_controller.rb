class TopController < ApplicationController
  before_action :ensure_user, only: [:edit, :update, :destroy]

  def index
  end
end
