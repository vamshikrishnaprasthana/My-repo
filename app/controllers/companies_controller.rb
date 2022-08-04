class CompaniesController < ApplicationController
  def index
    @c=Company.all
  end

  def show
    @c=Company.find(params[:id])
  end

  def create

  end
end
