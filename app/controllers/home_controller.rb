class HomeController < ApplicationController
  def index    
  end

  def neste
    @message = "Hello kaken"
  end

  def siste
    @text = Tekst.find(params[:id])
    @message = "Siste page av appen"
  end
end
