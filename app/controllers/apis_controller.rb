class ApisController < ApplicationController
  before_action :set_api, only: [:edit, :destroy]

  def new
    @apis = Api.where(user: current_user)
    @api = Api.new
    @exchanges = Exchange.all - current_user.apis.map {|e| e.exchange}.uniq
  end

  def create
    @api = Api.new