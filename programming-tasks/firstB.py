import csv
import operator
			
f = open('top10_sample.csv')
csv_f = csv.reader(f)
brand_dict = {}
for row in csv_f:
	for li in row:
		
		li = li.replace('[','')
		li = li.replace(']','')
		lis = li.split(',')
		
		for brand in lis:
			print brand
			if brand in brand_dict.keys():
				brand_dict[brand] = brand_dict[brand] +1
			else:
				brand_dict[brand] = 1
				
sorted_brandx = sorted(brand_dict.items(), key=operator.itemgetter(1))
for key in sorted_brandx:
	print(key[0] + "  "+str(key[1]))
