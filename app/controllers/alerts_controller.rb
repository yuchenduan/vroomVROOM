class AlertsController < ApplicationController
  before_action :set_alert, only: [:show, :edit, :update, :destroy]

  def create
    @alert = Alert.new(alert_params.merge(user: current_user))
    if @alert.save
      redirect_to new_alert_path, notice: "Alert created successfully"
    else
      render :new
    end
  end

  def destroy
    @alert.destroy
    redirect_to new_alert_path, notice: "Alert deleted successfully"
  end

  def update
    @alert.update(alert_params)
  