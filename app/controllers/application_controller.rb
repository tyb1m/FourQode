class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

#   before_action :set_request_variant

#   def index
#     request.user_agent       #=> "Mozilla/5.0 (Macintosh; ..."
#     request.device_type      #=> :pc
#     request.os               #=> "Mac OSX"
#     request.browser          #=> "Chrome"
#     request.from_pc?         #=> true
#     request.from_smartphone? #=> false
#   end

#   private

#   # It is useful for Action Pack variants, which is new feature from Rails 4.1.
#   # You can switch view templates by +pc or +smartphone in file name.
#   # http://guides.rubyonrails.org/4_1_release_notes.html#action-pack-variants
#   def set_request_variant
#     request.variant = request.device_variant # :pc, :smartphone
#   end

end
