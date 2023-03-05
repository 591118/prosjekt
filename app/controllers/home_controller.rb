class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett
    @tekst = Tekst.find(params[:id])
      if true
        redirect_to "/siste"(@tekst)
      end
  end 

  def siste
    @tekst = tekst.latest
    @message = "Siste page av appen"
  end

end