import time
from datetime import date

today = date.today()

moved_in = date(today.year, 11, 6)

pay_rent_prev = date(today.year, 10, 15)
pay_rent = date(today.year, 11, 15)

pay_int = pay_rent - pay_rent_prev 
print("days_in_month = %i" % pay_int.days)

inhabitated = pay_rent - moved_in
print("inhabitated days = %i" % inhabitated.days)

rent = 3235
safety_deposit = 2400

prc = inhabitated.days / pay_int.days
print("percent of me inhabitated = %f %%" % (prc * 100) )

should_pay = prc * rent 
print("should pay w/o safety_deposit = %f" % should_pay)
pay_all = should_pay+safety_deposit
print("should pay with safety_deposit = %f" % pay_all)
