class AssetsController < ApplicationController

    def create
        new_asset = Asset.create!(asset_params)
        render json: new_asset, status: :created
    end

    def show
        asset = find_asset(params[:id])
        render json: asset, include: [:user]
    end


    private

    def find_asset(id)
        Asset.find_by(id: id)
    end

    def asset_params
        params.permit(:name, :quantity)
    end


end
