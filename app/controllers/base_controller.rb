# frozen_string_literal: true

class BaseController < ActionController::Base
  protect_from_forgery with: :null_session
  include DeviseTokenAuth::Concerns::SetUserByToken
  devise_token_auth_group :member, contains: %i[user admin_user]
  before_action :authenticate_member!

  rescue_from ActiveRecord::RecordNotFound do |exception|
    render_json_error(
      404,
      :not_found, nil,
      full_messages: exception.message
    )
  end
end
