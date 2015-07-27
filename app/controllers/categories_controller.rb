

  class CategoriesController < ApplicationController
 
  def index
    @categories = Category.all
    end
  end

  def show
    @category = Category.find(params[:id])
    end
  end

  
  def new
    @category = Category.new
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

 
  def create
    @category = Category.new(params[:category])
  end

 
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end
end

end
