let fee=0.9988
var last_price=1.6310
var current_share=4459.32
var current_cost=6950.0
var current_cost_price=1.5585
var buy=1000.0
var latest_price=1.6080
var want_profit_rate = 0.01

func current_current_state(){
	var current_sum=last_price*current_share
	var current_profit=(last_price-current_cost_price)*current_share
	var current_profit_rate=((last_price-current_cost_price)/current_cost_price)*100
	print("current_sum is \(current_sum)")
	print("current_profit is \(current_profit)")
	print("current_profit_rate \(current_profit_rate)%")
}

func target_state(buy:Double,latest_price:Double){
	var buy_net=Double(buy)*fee
var buy_share=buy_net/latest_price;
var target_share=current_share+buy_share
var target_cost=current_cost+buy
var target_cost_price=Double(target_cost)/target_share
var target_profit=(latest_price-target_cost_price)*target_share
var target_profit_rate=((latest_price-target_cost_price)/target_cost_price)*100
print("target_cost_price is \(target_cost_price)")
print("target_profit is \(target_profit)")
print("target_profit_rate is \(target_profit_rate)%")
}

func need_to_buy(wpr:Double){
	var want_cost_price=latest_price/(want_profit_rate+1)
var temp1=want_cost_price*current_share-Double(current_cost)
var temp2=1-want_cost_price*fee/latest_price
var want_buy=temp1/temp2
print("need to buy \(want_buy)")
}


current_current_state()
target_state(buy:buy,latest_price:latest_price)
need_to_buy(wpr:want_profit_rate)

