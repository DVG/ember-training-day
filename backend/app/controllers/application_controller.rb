class ApplicationController < ActionController::API
  include ActionController::Serialization
  protect_from_forgery with: :null_session
end
