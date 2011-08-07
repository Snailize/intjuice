# -*- encoding : utf-8 -*-
require 'factory_girl'

Factory.define :user do |u|
  u.username 'pmq20'
  u.email 'user@test.com'
  u.password 'please'
end

