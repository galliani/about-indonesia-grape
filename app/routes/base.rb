module Routes
  # This is the base of all bases for the API which its sole purpose
  # is to bundle all versions of endpoints in one file.
  class Base < Grape::API
    mount Routes::V1::API
  end
end