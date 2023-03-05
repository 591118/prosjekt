class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett(tekst)
    @tekst = params[:tekst]
    redirect_to siste_path(tekst: tekst)
  end 

  def siste (tekst)
    @tekst = params[:tekst]
    @message = "Siste page av appen"
  end

  private def tekst_params
    params.require(:Text).permit(:body)
  end

end