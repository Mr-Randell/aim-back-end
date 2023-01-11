class AssetsController < ApplicationController
    
    def create
        new_asset = Asset.create!(asset_params)
        render json: new_asset, status: :created
    end

end
