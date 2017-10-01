module Routes
  # This is the base of all bases for the API
  class Base < Grape::API
    mount Routes::V1::API
  end
end