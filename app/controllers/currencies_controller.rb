class CurrenciesController < ApplicationController

  def first_currency
    
    raw_data = open("https://api.exchangerate.host/symbols").read

    @array_currencies = Array.new

    render({ :template => "currency_templates/step_one.html.erb"})
  end

end
