# 482-Group-Project
Inertia Pendulum
<p align = "left">
  <img src = "CSU_Chico_seal.png" "width="200" height="200" style="margin:10px 10px">
</p>
California State University, Chico

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
The Furuta Pendulum, a rotational inverted pendulum, consists of a driven arm which rotates in the
horizontal plane and a pendulum attached to said arm which is free to rotate in the vertical plane. It was
invented in 1992 at the Tokyo Institute of Technology by Katsuhisa Furuta and his colleagues. The
team used this project to investigate the creation of a test platform for control system
algorithms in a low-cost and streamlined fashion. In that regard, the project team is expected to create
a mathematical model of the system with a designed control system.                                                                                 
<p align = "center">
  <img src = "IntroPic.png" "width="500" height="500" style="margin:10px 10px">
</p>

## 2. Modeling
>Logical Viewpoint:
<p align = "center">
  <img src = "Logical Viewpoint.png" "width="500" height="500" style="margin:10px 10px">
</p>
                                                                                       
>Functional Viewpoint:
<p align = "center">
  <img src = "Operational Viewpoint.png" "width="500" height="500" style="margin:10px 10px">
</p>

Nomenclature:
<p align = "center">
  <img src = "Nomenclature.png" "width="500" height="500" style="margin:10px 10px">
</p>

>Calculations:
                                                                                  
The mathematical model for the IWP will be derived using the Euler-Lagrange equations (Eq. 1&2) to demonstrate the interacting bodies as a second-order ordinary differential equation.
<p align = "center">
  <img src = "calculations1.png" "width="500" height="120" style="margin:10px 10px">
</p>
The “L” term will be determined by an analysis of both the kinetic energies and potential energies from both the wheel and link. The difference of the summed kinetic energies and potential energies from both bodies will give us the Lagrangian as shown in Eq. 2, 3, and 4.
<p align = "center">
  <img src = "calculations2.png" "width="500" height="120" style="margin:10px 10px">
</p>
The kinetic energy seen at the link is based on the geometric properties, and mass, of the link as a function of the change in angle when the system accelerates. This can be viewed as a rectangular extrusion with a given mass Ml as well as the energy it takes it to rotate about its center of mass.
 <p align = "center">
  <img src = "calculations3.png" "width="500" height="90" style="margin:10px 10px">
</p> 
The kinetic energy at the wheel can be achieved by a similar process, although, the angle of the wheel will be affected by the angle of the link which can be calculated by the sum of the 2.
 <p align = "center">
  <img src = "calculations4.png" "width="500" height="100" style="margin:10px 10px">
</p> 
The potential energy equations can be formed under the assumption that the angle, θl, is in a rested position and both potential energies will equate to 0. The pendulum should only gain potential energy as the pendulum begins swinging to a position and certain height, where the kinetic is transferred to potential energy after, and just before, the pendulum swings back down when the acceleration and velocity is at 0.
 <p align = "center">
  <img src = "calculations5.png" "width="500" height="100" style="margin:10px 10px">
</p>  
Thus, given the Euler-Lagrange equations stated in the beginning, the Lagrangian can be viewed and constructed as:
<p align = "center">
  <img src = "calculations6.png" "width="500" height="100" style="margin:10px 10px">
</p>  
After plugging in the “L” term to Eq. 1 & 2, and a bit of rearranging, we can view the equation in matrix form.
 <p align = "center">
  <img src = "calculations7.png" "width="500" height="200" style="margin:10px 10px">
</p>
To verify that the inverse of the matrix exists (which is needed to find the solution of linear equations), it is necessary to take the determinant of the D matrix and confirm that the solution is NOT equal to 0.
Once confirmed, we can define our state vectors as such:
<p align = "center">
  <img src = "calculations8.png" "width="500" height="200" style="margin:10px 10px">
</p>
From Eq.#, we can take the inverse of our D matrix:
 <p align = "center">
  <img src = "calculations9.png" "width="500" height="200" style="margin:10px 10px">
</p>
After taking the inverse of the D matrix formed from the original Lagrangian, in Eq.#, we can represent the state vector model in the form of its derivative as shown:      
 <p align = "center">
  <img src = "calculations10.png" "width="500" height="200" style="margin:10px 10px">
</p>
The state space model can be approximated in the form of a linear representation as:
<p align = "center">
  <img src = "calculations11.png" "width="500" height="200" style="margin:10px 10px">
</p>
Where A and B, and C are represented as:
<p align = "center">
  <img src = "calculations12.png" "width="500" height="200" style="margin:10px 10px">
</p>
<p align = "center">
  <img src = "calculations13.png" "width="500" height="200" style="margin:10px 10px">
</p>                                                                                    

## 3. Sensor Calibration
For the Inertia Pendulum, the main contributing factor to its operation is the angle of the lever arm, as the control system seeks to make it vertical. This project only has one degree of freedom; with only a single axis, the value of the angle is measured through the encoder. This reading will determine the amount of input required by the controller to react to the changing positions of the wheel, eventually reaching its goal of becoming vertical.

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
