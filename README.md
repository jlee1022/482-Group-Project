# 482-Group-Project
Inertia Pendulum
<p align = "left">
  <img src = "CSU_Chico_seal.png" "width="200" height="200" style="margin:10px 10px">
</p>
California State University of Chico

Fall 2021, MECA482-01-7534 Control System Design

Instructor: Dr. Hasan Sinan Bank

Project Members: Sarah Catching, Jerome Lee, Austin Mahannah, Craig Parks, Melania Raygoza

## Table of Contents
1. Introduction 
2. Modeling
3. Sensor Calibration
4. Control Design and Simulations
5. Simulation
6. References

## 1. Introduction 
-Furuta Pendulum, rotational inverted pendulum consists of a driven arm which rotates in the
horizontal plane and a pendulum attached to that arm which is free to rotate in the vertical plane. It was
invented in 1992 at Tokyo Institute of Technology by Katsuhisa Furuta and his colleagues. The
problem that the team investigates with this project is creating a test platform for control system
algorithms -in a low-cost and streamlined fashion. In that regard, the project team is expected to create
a mathematical model of the system with a designed control system. The deliverables are listed in later
section.                                                                                 
<p align = "center">
  <img src = "IntroPic.png" "width="500" height="500" style="margin:10px 10px">
</p>

## 2. Modeling
-Logical Viewpoint:
<p align = "center">
  <img src = "Logical Viewpoint.png" "width="500" height="500" style="margin:10px 10px">
</p>
                                                                                       
Functional Viewpoint:
<p align = "center">
  <img src = "Operational Viewpoint.png" "width="500" height="500" style="margin:10px 10px">
</p>

-Calculations

## 3. Sensor Calibration
For the Inertia Pendulum, the main contributing factor is the angle of the lever arm as the control system seeks to make it vertical. This project only has one degree of freedom. With only a single axis, the value of the angle is measured through the encoder. This reading will determine the amount of input the controller needs to put in to react to the wheel as its position moves, eventually reaching its goal of becoming vertical.

## 4. Control Design and Simulations
Controller design, Matlab to Coppelliasim:

## 5. References
Hernández-Guzmán, Victor Manuel, and Ramón Silva-Ortigoza. (2019). Automatic control with experiments. Cham, Switzerland: Springer.  
                                                                                    
Nise, Norman S. (2015). “Control Systems Engineering” Seventh Ed. Wiley.

## 6. Appendix
-Simulink Diagram :

Coppeliasim Video: 

CAD Model:

MATLAB Code:

MatLab Results:
<p align = "center">
  <img src = "MatLab_Results.png" "width="500" height="500" style="margin:10px 10px">
</p>
