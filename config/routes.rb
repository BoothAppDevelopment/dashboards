Rails.application.routes.draw do
 
  get("/forex", {:controller => "currencies", :action => "first_currency"})
  get("/forex/:first_currency", {:controller => "currencies", :action => "second_currency"})
  get("/forex/:first_currency/:second_currency", {:controller => "currencies", :action => "exchange_rate"})



end
