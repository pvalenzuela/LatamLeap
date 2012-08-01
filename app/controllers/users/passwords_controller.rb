class Users::PasswordsController < Devise::PasswordsController
  # POST /resource/password
  def create
    self.resource = resource_class.send_reset_password_instructions(resource_params)
    if !successfully_sent?(resource)
      flash[:error] = resource.errors.full_messages.map { |msg| "<li>".concat(msg) }.join.html_safe
    end
    respond_with({}, :location => after_sending_reset_password_instructions_path_for(resource_name))

  end
end
