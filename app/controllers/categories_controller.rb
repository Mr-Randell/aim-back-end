class CategoriesController < ApplicationController

    def create
        new_category = Category.create!(category_params)
        render json: new_category, status: :created
      end
    
      def show
        category = find_category(params[:id])
        render json: category, include: [:user]
      end
    
      def index
       render json: Category.all, status: :ok
      end
    
    
      def destroy 
        category = find_category(params[:id])
        category.destroy
        head :no_content
      end
      private
    
      def find_category(id)
        Category.find_by(id: id)
      end
    
      def category_params
        params.permit(:category)
      end
end
