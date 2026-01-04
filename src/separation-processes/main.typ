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
and the solvent are in opposite directions. Other usage include: instant coffee
production, tea, oils from peanuts, pharmaceutical products from leaves, roots,
and bark, and leaching metals from ore The solid should first be pretreated.
Common methods include, grinding, which increases surface area and thus
diffusion rate, drying, for the destruction of cell walls in plant material,
and flaking/rolling are generally done for seeds.

== Continuous and Batch Leaching

Leaching can be done either in batches or continuous. The latter is prefferred
if longer residence times are required such as for the processing of minerals.
One such usage is the leaching of gold from gold ore which uses a chemical
reaction as written in @eq:elsner_rxn, the _Elsner reaction_. The gold forms a soluble complex with
cyanide in the presence of oxygen gas. The gold ore is first comminuted to
ensure efficient reaction.

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
  caption: [The mechanism of leaching.]
) <fig:leaching-mechanism>

It is said the step 4 is the rate limiting step since the solvent diffuses
through a resisting solid medium whilst carrying the solute.

== Types of Leaching

The simplest leaching design is of a _fixed bed_. Named accordingly as *fixed
bed leaching*. One usage is the extraction of sugar from the sugar beet as shown
in @fig:sugar-beet-extraction. This equipment is termed as the _sugar beat
diffuser_ or _extractor_. The sugar beets are first sliced thinly to produce
the so-called _cosettes_. In the vessel, the top part is opened to dump a batch
of cosettes inside. Hot water flows through the fixed bed and solubilizes the
sugar, leaving at the bottom of the vessel. A countercurrent configuration of
multiple sugar beat diffusers is called a _Shanks system_.

#figure(
  move(image("assets/sugar-beet-extraction.svg"), dx: 2em),
  caption: [Fixed-bed leaching of sugar beets.]
) <fig:sugar-beet-extraction>

For *moving bed leaching*, the bed of solid feed is (duh) moving. An example is
the Bollman bucket-type extractor as shown in @fig:bollman-extractor. The flow
of the fesh solvent and the fresh flakes are countercurrent. In the figure
above, the solvent is introduced to the left then passes through perforated
baskets and extracts some solute from the wet flakes. They exit as the _half
miscella_ and is recycled again to extract from the fresh flakes and exits as
the _full miscella_. The baskets are conveyed in a circular manner akin to
a ferris wheel, and the extracted flakes are discarded by flipping the basket
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
  caption: [Agitated solid leaching.]
) <fig:agitated-solid-leaching>

== Ideal Leaching <sec:ideal-leaching>

The following assumptions are true for *ideal leaching*:
1. The operating line equations are the material balance equations (neglect leakage)
2. The inert solid is insoluble in the solvent
3. All the solute is dissolved in the first stage.
4. Time is sufficient to dissolve all solute.
5. No solute remains adsorbed onto the inert solid.
6. It is not possible to remove all liquid from the solid.

== Leaching Calculations

=== Single stage leaching of milled soybean <prob:single-stage-milled>

Find the mass flow rates and composition of the outlet streams of
@fig:single-stage-prob

#figure(
  image("assets/prob-single-stage.svg"),
  caption: [Flowsheet of @prob:single-stage-milled]
) <fig:single-stage-prob>

#solution[
  1. Calculate $L_1$ using $N$.

  $
    L_1
    & = 100 "kg" dot 0.80 "inert" dot ("kg solution")/(1.5 "kg inert") \
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
  ]
  $
]

=== Single stage leaching of soybean slurry <prob:single-stage-slurry>

Find the composition of the outlet streams of @fig:single-stage-prob-slurry

#figure(
  image("assets/prob-single-stage-milled.svg"),
  caption: [Flowsheet of @prob:single-stage-slurry]
) <fig:single-stage-prob-slurry>

#solution[
  1. First, $L_1$ can be determined using the retention factor $N$ and the
     inert solids content of the feed.

     $
      L_1
      & = 70 "kg inert" dot ("kg solution")/(1.5 "kg inert") \
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
  caption: [Flowsheet of @prob:single-stage-neem-seed]
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
