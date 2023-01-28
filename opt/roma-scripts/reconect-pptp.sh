#! /usr/bin/python3

import os

result = os.system('ping -Q 2 -c 4 -t 2 192.168.221.1') #тут нужно указать какойто адрес из подсети впн обычно указывают адрес сервера vpn
if result != 0:
    os.system('sudo killall pppd')
    os.system('sudo pppd call vpn-unix')
else:
    print('ok')

