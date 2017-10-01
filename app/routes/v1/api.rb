module Routes
  module V1
    class API < Grape::API
      version 'v1'
      format :json

      include Routes::V1::Provinces

    end
  end
end