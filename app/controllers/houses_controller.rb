class HousesController < ApplicationController
  def index
    @house=House.all
  end

  def new
    @house=House.new
  end

  def show
    @house=House.find(params[:id])
  end

  def edit
    @house=House.find(params[:id])
  end

  def update
      @house=House.find(params[:id])
      if @house.update(house_params)
        flash[:notice]="updated successfully"
        redirect_to @house
      else
        render 'edit'
      end
  end

  def create
    @house = House.new(params.required(:house).permit(:name, :address))
    if @house.save
      flash[:notice]="Created successfully"
      redirect_to @house
    else
      render 'new'
  end
end

   def destroy
     @house=House.find(params[:id])
     @house.destroy
     flash[:notice]="House destroyed successfully"
  end

private
  def house_params
    params.required(:house).permit(:name, :address)
  end
end
