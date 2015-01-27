import time


ports = "ABCDEFGHI"
str=[]
str.append("/*")
str.append("*/,{.pull=GPIO_PUPD_NONE,.mode=GPIO_MODE_OUTPUT,.rcc=RCC_GPIO")
str.append(",.port=GPIO")
str.append(",.pin=GPIO")
str.append(",.exti_enabled=0,.exti=EXTI")
str.append(",.irq=NVIC_EXTI")
str.append("_IRQ}")

for P in ports:
    for s in str:
        print(s, P)

#time.sleep(0)

# write it to file
f = open("pins.txt", "w")
f.write("ban")
f.close()
f = open("pins.txt", "r")
f.read()


raw_input()
