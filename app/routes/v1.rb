module Routes
  module V1
    class API < Grape::API
      version 'v1'
      format :json

      # mount Routes::V1::Provinces
    end
  end
end