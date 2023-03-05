class HomeController < ApplicationController
  def homepage    
  end

  def neste
    @message = "Hello kaken"
  end

  def opprett()
    @tekst = params[:tekst]
    redirect_to "/siste"
  end 

  def siste ()
    @message = "Siste page av appen"
  end

  private def tekst_params
    params.require(:Text).permit(:body)
  end

end