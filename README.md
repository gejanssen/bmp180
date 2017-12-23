# bmp180

### Enable IO
Enable IO (I2c module)

```
rpi-a:~/bmp180 $ sudo raspi-config nonint do_i2c 0
gej@rpi-a:~/bmp180 $
```

### Test I2C

Test if I2c works and if the address of the bmp is found

```
gej@rpi-a:~/bmp180 $ sudo i2cdetect -y 1
     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
00:          -- -- -- -- -- -- -- -- -- -- -- -- -- 
10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
20: -- -- -- -- -- -- -- 27 -- -- -- -- -- -- -- -- 
30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
40: 40 -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- 
70: -- -- -- -- -- -- -- 77                         
gej@rpi-a:~/bmp180 $
```
The address w're looking for is 40.

### Test reading

```
gej@rpi-a:~/bmp180 $ python bmp180.py 
Traceback (most recent call last):
  File "bmp180.py", line 25, in <module>
    bus = smbus.SMBus(1) # Rev 2 Pi uses 1 
IOError: [Errno 13] Permission denied
gej@rpi-a:~/bmp180 $ 
```

Ah, no permissions, again with root rights:

```
gej@rpi-a:~/bmp180 $ sudo python bmp180.py 
Chip ID     : 85
Version     : 2

Temperature :  23.5 C
Pressure    :  1027.22 mbar
gej@rpi-a:~/bmp180 $ 
```

It works.

### Todo

Documentation rrd database/graphical output
Documentation mariadb/php graphical output
