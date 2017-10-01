module Routes
  # This is the base of all bases for the API
  class Base < Grape::API
    # prefix '/api/ahmeng'

    mount Routes::V1::API
  end
end