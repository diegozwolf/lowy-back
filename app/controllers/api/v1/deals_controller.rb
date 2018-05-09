class Api::V1::DealsController < ApplicationController
  before_action :set_store, only: [:show, :update, :destroy, :create]
  def create
    # @deal = @store.deals.create(deals_params)
    @deal = @store.deals.new(deals_params)
    if @deal.save
      render json: @deal, status: :created
    else
      render json: @deal.errors, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
  end

  private
  def set_store
    @store = Store.find(params[:store_id])
  end
  def deals_params
    params.require(:deal).permit(:title, :description, :desc, :store_id)
  end
end
