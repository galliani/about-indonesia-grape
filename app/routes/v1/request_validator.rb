module Routes
  module V1
    module RequestValidator
      def prevent_unauthorized_access!
        error!('401 Unauthorized', 401) unless headers['Authorization'] == ENV['API_SECRET']
      end      
    end
  end
end