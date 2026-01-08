#import "template.typ": *

#title-page([Separation Processes])
#show: template

= Leaching

Leaching separates the solute from a solid feed using a solvent as seen in
@fig:leaching-simple. For example, the coconut oil from copra, the dried white
flesh of the coconut using an organic solvent such as hexane.

#figure(
  image("assets/leaching-diagram-simple.svg"),
  caption: [Simple leaching diagram.],
) <fig:leaching-simple>

It is generally configured in a countercurrent manner wherein the solid feed
andthe solvent are in opposite directions. Other usage include: instant
coffeeproduction, tea, oils from peanuts, pharmaceutical products from leaves,
roots,and bark, and leaching metals from ore The solid should first be
pretreated.Common methods include, grinding, which increases surface area and
thusdiffusion rate, drying, for the destruction of cell walls in plant material,
andflaking/rolling are generally done for seeds.

== Continuous and Batch Leaching

Leaching can be done either in batches or continuous. The latter is prefferred
if longer residence times are required such as for the processing of minerals.
One such usage is the leaching of gold from gold ore which uses a chemical
reaction as written in @eq:elsner_rxn, the _Elsner reaction_. The gold forms a
soluble complex with cyanide in the presence of oxygen gas. The gold ore is
first comminuted to ensure efficient reaction.

$
  4"Au" + 8"Na""CN" + "O"_2 + 2"H"_2"O" -> 4"Na"["Au"("CN")_2] + 4"Na""OH"
$ <eq:elsner_rxn>

== Leaching Mechanism

The mechanism of leaching can be thought of in 5 steps as visualized in
@fig:leaching-simple:
+ From the liquid bulk, solvent molecules diffuse to the surface of the solid
  particle.
+ From the surface, the solvent molecules diffuse into solid particle.
+ The solute is solubilized by the solvent.
+ The solvent carries the solute as it diffuses to the surface of the solid
  particle.
+ From the surface of the solid particle, the solution diffuses out to the
  liquid bulk.

#figure(
  image("assets/leaching-mechanism.svg"),
  caption: [The mechanism of leaching.],
) <fig:leaching-mechanism>

It is said the step 4 is the rate limiting step since the solvent diffuses
through a resisting solid medium whilst carrying the solute.

== Types of Leaching

The simplest leaching design is of a _fixed bed_. Named accordingly as *fixed
bed leaching*. One usage is the extraction of sugar from the sugar beet as shown
in @fig:sugar-beet-extraction. This equipment is termed as the _sugar beat
diffuser_ or _extractor_. The sugar beets are first sliced thinly to produce the
so-called _cosettes_. In the vessel, the top part is opened to dump a batch of
cosettes inside. Hot water flows through the fixed bed and solubilizes the
sugar, leaving at the bottom of the vessel. A countercurrent configuration of
multiple sugar beat diffusers is called a _Shanks system_.

#figure(
  move(image("assets/sugar-beet-extraction.svg"), dx: 2em),
  caption: [Fixed-bed leaching of sugar beets.],
) <fig:sugar-beet-extraction>

For *moving bed leaching*, the bed of solid feed is (duh) moving. An example is
the Bollman bucket-type extractor as shown in @fig:bollman-extractor. The flow
of the fesh solvent and the fresh flakes are countercurrent. In the figure
above, the solvent is introduced to the left then passes through perforated
baskets and extracts some solute from the wet flakes. They exit as the _half
miscella_ and is recycled again to extract from the fresh flakes and exits as
the _full miscella_. The baskets are conveyed in a circular manner akin to a
ferris wheel, and the extracted flakes are discarded by flipping the basket
over. Another example is the _Hildebrandt extractor_ as shown in
@fig:hildebrandt-extractor. It is a U-shaped moving bed extractor that consists
of screw conveyors. It is configured in a countercurrent manner as the solids
are conveyed opposite the direction of the solvent.

#figure(
  move(image("assets/bollman-extractor.svg"), dx: -2em),
  caption: [Bollman extractor.],
) <fig:bollman-extractor>
#figure(
  image("assets/hildebrandt-extractor.svg"),
  caption: [Hildebrandt extractor.],
) <fig:hildebrandt-extractor>

Another type of leaching is the *agitated solid leaching* which is usually done
in multiple vessels with common walls such that if there is overflow in one
vessel, it will be directed to the other. The slurries exiting the vessels are
pumped to the next and the vessels are agitated using slowly rotating _rakes_.

#figure(
  move(image("assets/agitated-solid-leaching.svg"), dx: 0em),
  caption: [Agitated solid leaching.],
) <fig:agitated-solid-leaching>

== Ideal Leaching <sec:ideal-leaching>

The following assumptions are true for *ideal leaching*:
1. The operating line equations are the material balance equations (neglect
  leakage)
2. The inert solid is insoluble in the solvent
3. All the solute is dissolved in the first stage.
4. Time is sufficient to dissolve all solute.
5. No solute remains adsorbed onto the inert solid.
6. It is not possible to remove all liquid from the solid.

== Absorption Factor Method in Calculating Amount of Stages

The absorption factor method is mainly used in calculating the number of
concurrent absorber columns in series. This is done by divididing the _average
concentration range_ to the _average concentration approach_. In which the
former is the range of possible values the concentrations can take and the
latter is the smallest difference between stream concentrations.

The _difference_ to be taken is the _log mean difference_.

== Leaching Calculations

=== Single stage leaching of milled soybean <prob:single-stage-milled>

Find the mass flow rates and composition of the outlet streams of
@fig:single-stage-prob

#figure(
  image("assets/prob-single-stage.svg"),
  caption: [Flowsheet of @prob:single-stage-milled],
) <fig:single-stage-prob>

#solution[
  1. Calculate $L_1$ using $N$.

  $
    L_1 & = 100 "kg" dot 0.80 "inert" dot ("kg solution")/(1.5 "kg inert") \
        & = 53.33 "kg solution"
  $

  2. Do an overall material balance, but exclude the inert solids to find $V_1$.

  $
             L_0 + V_2 & = V_1 + L_1 \
    20 "kg" + 100 "kg" & = V_1 + 53.33 "kg" \
                   V_1 & = 66.67 "kg solution"
  $

  3. Do an oil balance. From @sec:ideal-leaching, $x = y$.

  $
    L_0 dot 0.2 & = V_1(x) + L_1(x) \
    100 dot 0.2 & = 66.67 dot x + 53.33 dot x \
              x & = y = 0.167 ("kg oil")/("kg solution")
  $
]

=== Single stage leaching of soybean slurry <prob:single-stage-slurry>

Find the composition of the outlet streams of @fig:single-stage-prob-slurry

#figure(
  image("assets/prob-single-stage-milled.svg"),
  caption: [Flowsheet of @prob:single-stage-slurry],
) <fig:single-stage-prob-slurry>

#solution[
  1. First, $L_1$ can be determined using the retention factor $N$ and the inert
    solids content of the feed.

    $
      L_1 & = 70 "kg inert" dot ("kg solution")/(1.5 "kg inert") \
          & = 46.67 "kg solution"
    $

  2. Determine $V_1$ using an overall material balance, excluding the inert
    solids.

    $
      L_0 + V_2 & = L_1 + V_1 \
            V_1 & = 25 + 100 - 46.67 \
                & = 78.33 "kg solution"
    $

  3. Determine the product concentrations using $x_1 = y_1$, and a solute
    balance.

    $
      x_0 L_0 & = x_1 L_1 + y_1 V_1 \
          x_1 & = (x_0 L_0)/(L_1 + V_1) \
              & = (0.1 dot 25)/(46.67 + 78.33) \
              & = 0.02 ("kg oil")/("kg solution")
    $

  Therefore the concentrations of the overflow and the underflow are 0.02.
]

=== Leaching of Neem seeds <prob:single-stage-neem-seed>

Find the percent of neem seed oil recovered from.

#figure(
  image("assets/neem-seed-oil-prob.svg"),
  caption: [Flowsheet of @prob:single-stage-neem-seed],
) <fig:neem-seed-oil-prob>

#solution[
  $
    L_1 & = 5 dot 0.7 dot 0.60 \
        & = 2.1 "kg solution"
  $

  $
    5 dot 0.3 + 5 & = 2.1 + V_1 \
              V_1 & = 4.4 "kg solution"
  $

  $
    5 dot 0.3 & = 2.1 dot x + 4.4 dot x \
            x & = y = 0.2308
  $

  $
    "% recovery" & = (4.4 dot 0.2308)/(5 dot 0.3) \
                 & = 67.69%
  $
]

=== Multistage Leaching of Copra (Case I) <prob:mult-leach-copra>

Copra containing 20% coconut oil and the rest are insoluble solids using a
countercurrent multistage leaching configuration wishing to recover 90% of the
coconut oil and using pure hexane as solvent. The resulting overflow oil
solution is to be 50 wt% coconut oil. A constant retention factor of 1 kg liquid
retained per 2 kg of insoluble solid. Calculate the number of leaching stages.

#figure(
  image("assets/multistage-leaching-copra-prob.svg"),
  caption: [Flowsheet of @prob:mult-leach-copra],
) <fig:copra-mult-stage-prob>

#solution[
  1. Calculate $L_n$ by assuming a basis of 100 kg feed.
  $
    L_n
    & = 100 "kg copra" dot (0.80 "kg insoluble solid")/(1 "kg copra") dot (1 "kg liquid")/(2 "kg insoluble solid") \
    & = 40 "kg liquid"
  $

  2. Calculate $x_n$.
  $
    x_n
    & = ("kg oil")/("kg solution") \
    & = (100 "kg copra" dot (0.2 "kg oil")/(1 "kg copra") dot 0.1 "unrecovered")/(40 "kg solution") \
    & = 0.05
  $

  3. Calculate $V_1$.
  $
    V_1
    & = ("kg oil")/("oil concentration") \
    & = (100 "kg copra" dot (0.2 "kg oil")/(1 "kg copra") dot 0.9 "recovered")/(0.5) \
    & = 36 "kg liquid"
  $

  4. Calculate $V_(n+1)$ or $V_2$ (they are assumed to be equal, the same way
    $L_1 = L_n$).
  $
    V_(n+1) & = V_1 + L_n - L_0 \
            & = 36 + 40 - 100 dot 0.2 \
            & = 56 "kg liquid"
  $

  5. Calculate $y_2$.
  $
    0.2 dot L_0 + y_2 V_2 & = (V_1 + L_1) dot 0.5 \
                      y_2 & = ((36 + 40) dot 0.5 - 0.2 dot 100)/(56) \
                          & = 0.3214 \
  $

  6. Calculate the number of stages using the absorption factor method.
  $
    n & = 1 + (ln (0 - 0.05)/(0.3214 - 0.5))/(ln (0 - 0.3214)/(0.05 - 0.5)) \
      & = 4.78 approx 5 "stages" \
  $
]

=== Multistage leaching of gangue ore (Case I) <prob:mult-leach-gangue>

Gangue ore is to be washed in a multistage countercurrent leaching process. Pure
water is to be used to solubilize the CuSO#sub[4]. How many leaching equipment
in series are needed to obtain 95% of the original oil in the overflow? The feed
throughput is composed of 10000 kg inert, 1200 kg CuSO#sub[4], and 400 kg water.
The retention of each equipment is $(0.5 "kg inert")/(1 "kg solution")$, and the
overflow is composed of 8% oil.

#figure(
  image("assets/multistage-leaching-gangue-prob.svg"),
  caption: [Flowsheet of @prob:mult-leach-gangue],
) <fig:gangue-mult-stage-prob>

#solution[
  1. Calculate $L_n$.
  $
    L_n & = 10000 "kg inert" dot (1 "kg solution")/(0.5 "kg inert") \
        & = 20000 "kg solution"
  $

  2. Calculate $x_n$.
  $
    x_n & = ("mass of unrecovered CuSO"_4)/(L_n) \
        & = (1200 " kg CuSO"_4 dot 0.05 "unrecovered")/(20000 "kg solution") \
        & = 0.003 \
  $

  3. Calculate $V_1$.
  $
    V_1 & = ("mass of recovered CuSO"_4)(y_1) \
        & = (1200 " kg CuSO"_4 dot 0.95 "recovered")/(0.08) \
        & = 14250 "kg solution" \
  $

  4. Calculate $V_(n+1)$.
  $
    V_(n+1) & = V_1 + L_n - L_0 \
            & = 14250 + 20000 - 1200 - 400 \
            & = 32650 "kg solution" \
  $

  5. Calculate $y_2$.
  $
    1200 + y_2 dot 32650 & = (14250 + 20000) 0.08 \
    // 0.047166921898928
                     y_2 & = 0.0472
  $

  6. Calculate $n$.
  $
    n & = 1 + (ln (0 - 0.003)/(0.0472 - 0.08))/(ln (0 - 0.0472)/(0.003 - 0.08)) \
      & = 5.88 approx 6 "stages" \
  $
]

===
