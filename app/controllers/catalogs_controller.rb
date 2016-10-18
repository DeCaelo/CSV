class CatalogsController < ApplicationController

  def index
    @catalogs = Catalog.all
  end

  def show
    @catalogs = Catalog.all
  end

  def import
    Catalog.import(params[:file])
    redirect_to root_url, notice: "CSV importé"
  end
end
