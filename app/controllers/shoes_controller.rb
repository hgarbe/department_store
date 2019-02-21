class ShoesController < ApplicationController
  before_action :set_department
  before_action :set_shoe, only: [:show, :edit, :update, :destroy]

  def index
    @shoes = @department.shoes
  end

  def show
  end

  def new
    @shoe = @department.shoes.new
    render partial: "form"
  end

  def edit
    render partial: "form"
  end

  def create
    @shoe = @department.shoes.new(shoe_params)

    if @shoe.save
      redirect_to [@department, @shoe]
    else
      render :new
    end
  end

  def update
    if @shoe.update(shoe_params)
      redirect_to [@department, @shoe]
    else
      render :edit
    end
  end

  def destroy
    @shoe.destroy
    redirect_to department_shoes_path
  end

  private
    def set_department
      @department = Department.find(params[:department_id])
    end

    def set_shoe
      @shoe = Shoe.find(params[:id])
    end

    def shoe_params
      params.require(:shoe).permit(:name, :body)
    end
end
