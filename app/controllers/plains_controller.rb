class PlainsController < ApplicationController

def index
  @plain = Plain.all
end



 def show

 end
#
 def set_plain
   @plain = Plain.find(params[:id])
 end
#
def create
   @plain =Plain.new(author_params)

   if @plain.save
     format.html { redirect_to author_url(@plain), notice: "Plain was successfully created." }
     format.json { render :show, status: :created, location: @plain}
   else
     format.html { render :new, status: :unprocessable_entity }
     format.json { render json: @plain.errors, status: :unprocessable_entity }
   end
 end
 def plain_params
   params.require(:plain).permit(:name,:price)
 end

 end
