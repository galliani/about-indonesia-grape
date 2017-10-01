module Routes
  module V1
    module Provinces
      extend ActiveSupport::Concern
      included do

        namespace :provinces do
          desc 'Return list of provinces.'
          get '/' do
            Province.all
          end

          desc 'Return a province.'
          params do
            requires :id, type: Integer, desc: 'Province id.'
          end
          route_param :id do
            get do
              Province.find(params[:id])
            end
          end

          desc 'Create a province.'
          params do
            requires :province, type: Hash do
              requires :name, type: String, desc: 'Your Province.'
            end          
          end
          post do
            Province.create!(params[:province])
          end

          desc 'Update a Province.'
          params do
            requires :id, type: String, desc: 'Province ID.'
            requires :province, type: Hash do
              requires :name, type: String, desc: 'Your Province.'
            end
          end
          put ':id' do
            Province.find(params[:id]).update(params[:province])
          end

          desc 'Delete a Province.'
          params do
            requires :id, type: String, desc: 'Province ID.'
          end
          delete ':id' do
            Province.find(params[:id]).destroy
          end
        end        
        
      end      
    end
  end
end