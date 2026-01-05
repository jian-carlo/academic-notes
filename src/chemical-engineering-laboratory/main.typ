#import "template.typ": *
#show: template

#title-page([Chemical Engineering Laboratory])

= Orifice and Jet Flow Experiment

The goal of this experiment is to determine the coefficient of velocity $C_v$
and the coefficient of discharge $C_d$ of water leaving an orifice.

#figure(
  image("assets/constant-head-tank-trajectory.svg"),
  caption: [Visual representation of the experiment],
) <fig:exp1-trajectory>

$H$ is the vertical distance between the surface of the fluid and the level of
the orifice and the trajectory of the fluid is traced by needles equal in length
attached to a board. The $Y_0$ is taken as the reference point which is the
level of the top point of a needle when the bottom is at the same level of the
orifice and is marked before the first needle.

== Using the Bernoulli Equation

The Bernoulli equation is written as in @eq:bernoulli. Using that, we can
determine the velocity of the leaving fluid by basing on points 1 and 2 in
@fig:exp1-trajectory. And this velocity is calculated as in
@eq:velocity-bernoulli by assuming constant pressure head.

$
  Delta h_"kinetic" + Delta h_"potential" + Delta h_"pressure" = 0
$ <eq:bernoulli>

#where[
    / $Delta h_"kinetic"$: change in kinetic head $= Delta v^2\/2g$
    / $Delta h_"potential"$: change in potential head $= Delta z$
    / $Delta h_"pressure"$: change in pressure head head $= Delta P\/rho g$
]

$
v_"th" = sqrt(2 g H)
$ <eq:velocity-bernoulli>

== Using the Kinematic Equations

We can also assume that air resistance does not affect the trajectory of the
fluid and treat it as a jet where there are two components, the $v_x$ and the
$v_y$. We can say that $v_x$ is constant since there is no force acting with or
against it, while $v_y$ is affected by the downward acceleration of gravity.

Since the jet starts at zero $y$ velocity, the vertical distance traveled can
be computed by @eq:vertical-distance-traveled-half. We can also compute the $y$
velocity over time using @eq:change-in-y-velocity and combining the two
equations we get @eq:derived-vertical-travel.

$ Y = 1/2 v_y t $ <eq:vertical-distance-traveled-half>
$ v_y = g t $ <eq:change-in-y-velocity>
$ Y = 1/2 g t^2 $ <eq:derived-vertical-travel>

== Using the $X$ and $Y$ values of the Needles to find the Actual Velocity

The $X$'s in @fig:exp1-trajectory are the distances of the needles from the
reference point and the current point. For example $X_i$ is the horizotal
distance between the the edge of the board (the reference) and the position of
the i#super("th") needle. The $Y$'s are the same e.g., $Y_i$ is the vertical distance
from $Y_0$ and the upper tip of the i#super("th") needle.

Using this, we can compute the time for each needle interval from
@eq:derived-vertical-travel:

$
 t &= sqrt((2Y)/g) \
 t_1 &= sqrt((2Y_1)/g) \
 & dots.v \
 t_(15) &= sqrt((2Y_(15))/g) \
$

Similarly, the horizontal travelling distance of the jet is:

$
  X_1 & = v_x dot t_1 \
  & dots.v \
  X_(15) & = v_x dot t_(15) \
$

The actual velocity e.g., for point 1 can be found as in @eq:actual-velocity.
$
  v_(1,"actual") & = (X_1)/(t_1) = (X_1)/(sqrt((2Y_1)/g))
$ <eq:actual-velocity>

== Coefficient of Velocity

The coefficient of velocity, denoted as $C_v$, can be calculated in @eq:cov.

$
  C_v = ("actual velocity")/("theoretical velocity")
$ <eq:cov>

The theoretical velocity is the one determined in the bernoulli equation in
@eq:velocity-bernoulli, and the actual velocity is the one determined from the
$X$ and $Y$ values of the needles in @eq:actual-velocity.

$
  C_v
  & = (X_1\/sqrt((2Y_1)/g))/(sqrt(2 g H)) \
  & = (X_1)/(sqrt(2Y_1\/g) dot sqrt(2 g H)) \
  & = (X_1)/(2 sqrt(Y_1 H))
$ <eq:derived-cov>

Thus various values for $C_v$ can be found for different $H$.

== Coefficient of Discharge

Similar to @eq:cov, the coefficient of discharge, denoted as $C_d$, can be
calculated in @eq:cod

$
  C_d
  = ("actual volumetric flowrate")/("theoretical volumetric flowrate")
  = (Q_"act")/(Q_"th")
$ <eq:cod>

The actual flowrate can be determined by measuring the volume of fluid over
a measured amount of time e.g., a beaker placed at the end of the trajectory
with a stopwatch for measuring time.

$
  Q_"act" = ("volume measured")/("time measured")
$

The theoretical flowrate can be determined using the cross-sectional area of
the orifice and the formula for velocity as stated in @eq:velocity-bernoulli.

$
  Q_"th" & = A v_"th" \
  A & = (pi d^2)/4 \
  Q_"th" & = (pi d^2)/4 dot sqrt(2 g H)
$

Therefore the formula for $C_d$ is,

$
  C_d = (Q_"act")/((pi d^2)/4 dot sqrt(2 g H)).
$

In the experiment, you will observe that the $Q_"act"$ is always lower than
$Q_"th"$ this is because of the _vena contracta_ as shown in
@fig:vena-contracta wherein after the leaving the orifice, the fluid stream
narrows further, and as the stream expands again, there is energy loss leading
to a smaller value of flowrate than the theoretical. Another reason for the
flowrate minimization is the energy loss due to the viscosity of the fluid

#figure(
  image("assets/vena-contracta.svg"),
  caption: [Visualization of the vena contracta.]
) <fig:vena-contracta>

== Experiment Procedures according to the manuscript

1. Clip on a graph paper on the probe board behind the probes.
2. Place the apparatus on the Bench and adjust for leveling.
3. Connect the Bench outlet to the apparatus inlet.
4. Adjust the overflow pipe to obtain a required level in the tank.
5. Open the water supply valve to obtain a steady flow with minimum overflow.
6. Wait until the water level in the tank and jet profile is stable before
   adjusting the tips of the probes to be in line with the center of the jet.
7. Record the tip of the probe profile (upper tips) as well as the $Y=0$ mark.
8. Record the volume of flow using a stop watch and the bench measuring tank or
   measuring cup.

#pagebreak()
== Blank Data Sheet

#table(
 columns: (2.5fr, ..5*(1fr,)),
 stroke: none,
 align: (left, ..10*(center,)),
 table.hline(stroke: 1.2pt),
 table.cell(rowspan: 2, []), table.cell(colspan: 5, [Experiment No.]),
 [1], [2], [3], [4], [5],
 table.hline(stroke: 0.8pt),
 [Water level $H$, mm], [410], [390], [370], [350], [200],
 table.hline(stroke: 0.5pt+gray),
 [Volume, L], [2], [2], [2], [2], [2],
 table.hline(stroke: 0.5pt+gray),
 [Time, s], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [Flow rate, m#super("3")/s], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [Distance from graph, mm], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [$X_1 = 50, Y_1 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 100, Y_2 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 150, Y_3 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 200, Y_4 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 250, Y_5 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 300, Y_6 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 350, Y_7 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 400, Y_8 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 450, Y_9 = ?$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$X_1 = 500, Y_(10) = ?$], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [Distance from graph, mm], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [$C_(v,1)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,2)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,3)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,4)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,5)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,6)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,7)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,8)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,9)$], [], [], [], [], [],
 table.hline(stroke: 0.5pt+gray),
 [$C_(v,10)$], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [Coefficient of discharge], [], [], [], [], [],
 table.hline(stroke: 0.8pt),
 [$C_d$], [], [], [], [], [],
 table.hline(stroke: 1.2pt),
)
