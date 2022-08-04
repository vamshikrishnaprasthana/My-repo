class BusesController < ApplicationController
  def index
    @bus=Bus.all
  end

  def show
    @bus=Bus.find(params[:id])
  end

  def new
    @bus=Bus.new
  end

  def edit
    @bus=Bus.find(params[:id])
  end

  def update
    @bus=Bus.find(params[:id])
    if @bus.update(bus_params)
      flash[:notice]="updated sucessfully"
      redirect_to @bus
    else
      render 'edit'
    end
  end

      def create
        @bus=Bus.new(bus_params)
        if @bus.save
          flash[:notice]="Bus created sucessfully"
          redirect_to @bus
        else
          render 'new'
        end
      end

def destroy
  @bus=Bus.find(params[:id])
  @bus.delete
  flash[:notice]="Bus deleted sucessfully"
  redirect_to buses_path
end

def bus_params
  params.required(:bus).permit(:name,:colour)
end

end
