# programmingTask
# programmingTask

The zalora_multi.m performs a multiple feature linear regression over the product data initially provided as the product.csv. In this approach, the training model has been drafted over the subcategory 'jeans' in the product.csv. The learning model targets to determine the recent trending products in a particular subcategory (in this case jeans).

zalora_products.txt contains the data derived from original product.csv. In order to determine the trending products following features have been considered: original price, view in last 7 days, view in last 30 days, impression in last 7 days, impression in last 30 days, net sale in last 7 days, net sale in last 30 days.

Further, to assess the trend the view, impression, and net sale has been examined as how much the rate has been in last 7 days in comparison to last 30 days and a difference of it reflects the growing popularity of any product

trend view = (view in last 7 days / 7) - (view in last 30 days / 30)

trend impression = (impression in last 7 days / 7) - (impression in last 30 days / 30)

trend net sale = (net sale in last 7 days / 7) - (net sale in last 30 days / 30)

larger the value of each one, more has been the exposure of the individual product to online customers.

hence, trend net sale is the resulting value (y) of input parameters original price, trend view, trend impression.

There are overall 80 jeans products, 50 around of which are used to train the model. Once, trained 10 different product ids are chosen (from same sub category) to check their resulting 'trend net sale' and analysed in an ascending order. A comparison is later made between derived trend net sale against actual trend net sale order of these 10 products. Aim is to have a near around similar order in terms of growing trend of products and not their net sale(even if the derived trend net sale is not very close to originals). 
