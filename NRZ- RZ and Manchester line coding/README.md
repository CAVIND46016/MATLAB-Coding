# NRZ line coding:
In telecommunication, a non-return-to-zero (NRZ) line code is a binary code in which 1s are represented 
by one significant condition (usually a positive voltage) and 0s are represented by some other significant 
condition (usually a negative voltage), with no other neutral or rest condition.

#### Input sequence: ####
[1 0 1 0 1 0 1 1 1]
#### Output sequence: ####
NRZ.png

# RZ line coding:
Return-to-zero (RZ) describes a line code used in telecommunications signals in which the signal drops (returns) 
to zero between each pulse. This takes place even if a number of consecutive 0's or 1's occur in the signal. 
The signal is self-clocking.It suffers from using twice the bandwidth to achieve the same data-rate as compared 
to non-return-to-zero format.

#### Input sequence: ####
[1 0 1 0 1 0 1 1 1]
#### Output sequence: ####
RZ.png

# Manchester line coding:
In telecommunication and data storage, Manchester coding (also known as Phase Encoding, or PE) is a line code in which 
the encoding of each data bit has at least one transition and occupies the same time. It therefore has no DC component, 
and is self-clocking, which means that it may be inductively or capacitively coupled, and that a clock signal can be recovered 
from the encoded data.

#### Input sequence: ####
[1 0 1 0 1 0 1 1 1]
#### Output sequence: ####
Manchester.png


