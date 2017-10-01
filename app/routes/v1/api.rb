module Routes
  module V1
    class API < Grape::API
      version 'v1'
      format :json

      helpers Routes::V1::RequestValidator

      # Run all before_filters necessary for this version endpoints
      # Some validation and authentication could be good
      before do
        prevent_unauthorized_access!
      end

      include Routes::V1::Provinces
    end
  end
end