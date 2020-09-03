class RegistrationsController < Devise::RegistrationsController


 def create
   build_resource(sign_up_params)

   resource.save
   yield resource if block_given?
   if resource.persisted?
    if resource.active_for_authentication?
      set_flash_message! :notice, :signed_up
   