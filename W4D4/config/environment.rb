# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
NinetyNineCats::Application.initialize!
config.action_mailer.delivery_method = :letter_opener
