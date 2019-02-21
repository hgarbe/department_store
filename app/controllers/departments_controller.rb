class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @departments = Department.all
    #render :index
  end

  def show
    #localhost:3000/subs/1 or :id
    # @sub = Sub.find(params[:id])
  end

  def new
    @department = Department.new
    render partial: "form"
  end

  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to departments_path
    else
      render :new
    end  
  end  

  def edit
    render partial: "form"
  end

  def update
    if @department.update(department_params)
      #update(key:value) key = name: value = params[:sub][:name]
      #example { :id 1, name: "Spencer"}

      # redirect_to sub_path(@sub)
      redirect_to @department #same as above - simplified code
    else
      render :edit
    end  
  end
  
  def destroy
    @department.destroy
    redirect_to department_path
  end

  private
  def set_department
    @department = Department.find(params[:id])
  end

    def department_params
      params.require(:department).permit(:name)
    end   

end
