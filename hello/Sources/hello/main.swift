let fee=0.9988
var last_price=1.6310
var my_share=4459.32
var my_cost=6950
var my_cost_price=1.5585
var my_sum=last_price*my_share
var my_profit=(last_price-my_cost_price)*my_share
var my_profit_rate=((last_price-my_cost_price)/my_cost_price)*100

print("my_sum is \(my_sum)")
print("my_profit is \(my_profit)")
print("my_profit_rate \(my_profit_rate)%")

var buy=1000
var latest_price=1.6080
var buy_net=Double(buy)*fee
var buy_share=buy_net/latest_price;
var target_share=my_share+buy_share
var target_cost=my_cost+buy
var target_cost_price=Double(target_cost)/target_share
var target_profit=(latest_price-target_cost_price)*target_share
var target_profit_rate=((latest_price-target_cost_price)/target_cost_price)*100

print("target_cost_price is \(target_cost_price)")
print("target_profit is \(target_profit)")
print("target_profit_rate is \(target_profit_rate)%")


var want_profit_rate = 0.01
var want_cost_price=latest_price/(want_profit_rate+1)
var temp1=want_cost_price*my_share-Double(my_cost)
var temp2=1-want_cost_price*fee/latest_price
var want_buy=temp1/temp2

print("need to buy \(want_buy)")

