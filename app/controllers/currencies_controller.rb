class CurrenciesController < ApplicationController

  def first_currency
    
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_currencies = @symbols_hash.keys

    render({ :template => "currency_templates/step_one.html.erb"})
  end


  def second_currency
    @first_currency = params.fetch("first_currency")

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")

    @array_currencies = @symbols_hash.keys
  
    render({ :template => "currency_templates/step_two.html.erb"})
  end

  def exchange_rate
    @first_currency = params.fetch("first_currency")
    @second_currency = params.fetch("second_currency")

    render({ :template => "currency_templates/step_three.html.erb"})
  end

end
