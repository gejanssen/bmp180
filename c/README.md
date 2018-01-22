# bmp085 

is equal to bmp180 and on.

found at:

wget http://www.john.geek.nz/wp-content/uploads/2012/12/smbus.c


Edit code:

```
vi testBMP085.c
```


## Make Code

```
gcc -Wall -o testBMP085 ./smbus.c ./i2cbmp085.c
gcc -Wall -o testBMP085 ./smbus.c ./testBMP085.c
```


## Test code

```
./testBMP085
```

or

```
gej@rpi-b ~/bmp180/c $ ./testBMP085 
Temperature	23.1 �C
Pressure	1046.08 hPa
gej@rpi-b ~/bmp180/c $ 
```
