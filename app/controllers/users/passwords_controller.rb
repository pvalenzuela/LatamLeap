class Users::PasswordsController < Devise::PasswordsController
  # POST /resource/password
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    if successfully_sent?(resource)
      respond_with({}, :location => after_sending_reset_password_instructions_path_for(resource_name))
    else
    # set_flash_message(:error, resource.errors.get)
      flash[:error] = resource.errors.full_messages.map { |msg| "<li>".concat(msg) }.join.html_safe
      respond_with({}, :location => after_sending_reset_password_instructions_path_for(resource_name))
    end
  end
end
