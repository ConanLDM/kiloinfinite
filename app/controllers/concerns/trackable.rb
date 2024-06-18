app/controllers/concerns/trackable.rb
module Trackable
  extend ActiveSupport::Concern
   def track(name, properties = {})
    ahoy.track name, properties
  rescue StandardError => error
    # notify error tracker
  end
end
