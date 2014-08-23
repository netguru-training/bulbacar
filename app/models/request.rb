class Request < ActiveRecord::Base
  has_one: user_id
  has_one: route_id
  has_one: status
end
