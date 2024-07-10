class ApplicationController < ActionController::Base

rescue ActiveRecord::RecordNotFound => error
rescue ActiveRecord::RecordNotDestroyed => error

end
