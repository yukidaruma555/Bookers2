class RegistrationsController < Devise::RegistrationsController

  def create
    super do |resource|
      flash[:notice] = "Welcome! You have signed up successfully."
    end
  end
  
end
