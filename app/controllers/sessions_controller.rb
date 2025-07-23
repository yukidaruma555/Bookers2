class SessionsController < Devise::SessionsController
  
  def destroy
    super
    flash[:notice] = 'Signed out successfully.'
  end

  def create
    super do |resource|
    flash[:notice] = "Signed in successfully."
    end
  end
  
end