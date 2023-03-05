class HomeController < ApplicationController
  def index    
  end

  def neste
    @message = "Hello kaken"
  end

  def siste
    @message = "Siste page av appen"
  end
end
