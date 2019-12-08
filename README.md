# Altera DE1 TrafficLightController
Design using a Finite State Machine Approach (FSM) Traffic Light Controller. 

## Requirement  
<p align="center">
  <img width="349" height="=228" src="https://github.com/jason9829/AlteraDE1_TrafficLightController/blob/master/resources/images/CrossSectionOfTraffic.png">
</p>  
<div align="center">
  Figure 1. Cross section of the road from [1.]. 
</div>

<br />
<p align="center">
  <img width="257" height="=159" src="https://github.com/jason9829/AlteraDE1_TrafficLightController/blob/master/resources/images/StateTable.png">
</p>
<div align="center">
  Figure 2. State table of the controller from [1.]. 
</div>  <br />


<p align="center">
  <img width="300" height="250" src="https://github.com/jason9829/AlteraDE1_TrafficLightController/blob/master/resources/images/StateDiagram.png">
</p>
<div align="center">
  Figure 3. State diagram of the controller from [1.].
</div>  <br /> <br />


**The following specifications must be considered**  

1. The traffic signal for the main highway gets highest priority because cars are continuously present on the main highway. Thus, the main 
highway signal remain green by default.
2. Occasionally, cars from the country road arrive at the traffic signal. The traffic signal for the country road must turn green only long 
enough to let the cars on the country road go
3. As soon as there are no cars on the country road, the country road traffic signal turns yellow and then red and the traffic signal on the 
main highway turns green again. 
4. There is a sensor to detect cars waiting on the country road. The sensor sends a signal X as input to the controller. X = 1 if there are 
cars on the country road; otherwise, X = 0. 
5. There are delays on transitions from S1 to S2, from S2 to S3, and from S4 to S0. The delays must be controllable. Let S1 to S2 =10s delay, 
S2 to S3 = 20s delay. S4 to S0 = 10s delay. 
6. Display a count-down timer on two HEX for all delays stated in 5. 
7. Display “Hr GO” during state S0 and “Cr GO” during state S3. 8. Display “STOP” on HEX [3:0] for 5s during S2 to S3. Blinking the word 
“STOP” ON and OFF. 9. State diagram and state definitions for the traffic signal controller are as shown in Fig. 7B below:-

## References
[1.] [Lab Manual](https://github.com/jason9829/AlteraDE1_TrafficLightController/blob/master/resources/pdf/BAME2004%20%40%20LAB%202018.doc.pdf)
