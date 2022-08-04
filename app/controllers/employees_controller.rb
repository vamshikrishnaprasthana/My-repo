class EmployeesController < ApplicationController
  def index
    @employee=Employee.all
  end

  def show
    @employee=Employee.find(params[:id])
  end

  def edit
    @employee=Employee.find(params[:id])
  end

  def update
    @employee=Employee.find(params[:id])
    if @employee.update(employee_params)
      flash[:notice]="Updated successfully"
      redirect_to @employee
    else
      render 'edit'
    end
  end

  def new
    @employee=Employee.new
  end

def create
  @employee=Employee.new(employee_params)
  if @employee.save
    flash[:notice]="Created successfully"
    redirect_to @employee
  else
    render 'new'
  end
end

def destroy
  @employee=Employee.find(params[:id]).delete
  flash[:notice]="deleted successfully"
  redirect_to employees_path
end

private
def employee_params
  params.required(:employee).permit(:name)
end
end
