= Grundlagen
== Trigometrie
#image("../figures/triangle.png")
#table(
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  align: (center, center, center, center, center, center),
  fill: (column, row) => if column == 0 or row == 0 { gray },
  [],
  [$0^circle.stroked.small$],
  [$30^circle.stroked.small$],
  [$45^circle.stroked.small$],
  [$60^circle.stroked.small$],
  [$90^circle.stroked.small$],

  [$sin(alpha)$], [$0$], [$1/2$], [$sqrt(2)/2$], [$sqrt(3)/2$], [$1$],
  [$cos(alpha)$], [$1$], [$sqrt(3)/2$], [$sqrt(2)/2$], [$1/2$], [$0$],
  [$tan(alpha)$], [$0$], [$sqrt(3)/3$], [$1$], [$sqrt(3)$], [$-$],
)
#grid(
  columns: (50%, 50%),
  gutter: 1pt,
  align: (start + horizon, center),
  image("../figures/circle.png"),
  [
    #set block(spacing: 0pt)
    #image("../figures/sincosgraph.png")
    #image("../figures/sincosableitung.png")
  ],
)

== Vektorrechnung
*Länge des Vektors*: $|arrow(u)| = sqrt(u_x^2 + u_y^2 + u_z^2)$

== Ableitungen
#table(
  columns: (50%, 50%),
  inset: 2pt,
  fill: (_, row) => if row == 0 { gray },
  [*Funktion*], [*Ableitung*],
  $ x^a $, $ a dot x^(a-1) $,
  $ 1/x $, $ - 1 / x^2 $,
  $ sqrt(x) $, $ frac(1, 2 sqrt(x)) $,
  $ sin(x) $, $ cos(x) $,
  $ cos(x) $, $ -sin(x) $,
  $ tan(x) $, $ 1 / cos(2)^x $,
)

*Produktregel:* $ d/(d x)(f(x) dot g(x)) = f'(x) dot g(x) + f(x) dot g'(x) $
*Kettenregel:* $ d/(d x)f(g(x)) = f'(g(x)) dot g'(x) $

*Quotientenregel:* $ d/(d x)(f(x)/g(x)) = frac(f'(x) dot g(x) - g'(x) dot f(x), g(x)^2) $

=== Physikalische Grössen
#table(
  columns: (auto, auto, auto, auto),
  inset: 5pt,
  align: (center, center, center, center),
  fill: (column, _) => if column == 0 { gray },
  [*Geschwindigkeit*], [$v$], [-], [$m\/s$],
  [*Beschleunigung*], [$a$], [-], [$m\/s^2$],
  [*Federkonstante*], [$D$], [-], [$N\/m$],
  [*Frequenz*], [$f$], [Hertz], [$1\/s$],
  [*Kraft*], [$F$], [Newton], [$"kg" dot m\/s^2$],
  [*Energie*], [$E$], [Joule], [$N dot m$],
  [*Arbeit* = $Delta "Energie"$], [$W$], [Joule], [$J = N dot m$],
  [*Leistung* = Arbeit pro Zeit], [$P$], [Watt], [$J\/s$],
)
\* 4.19 Joule = 1 Cal, 1 Joule = 1 Watt/s => $3.6 dot 10^6J = 1 "kWh"$

=== Basisgrössen
#table(
  columns: (auto, auto, auto, auto),
  inset: 5pt,
  align: (center, center, center, center),
  fill: (column, _) => if column == 0 { gray },
  [*Länge*], [$l$], [Meter], [$m$],
  [*Masse*], [$m$], [Kilogramm], [$"kg"$],
  [*Zeit*], [$t$], [Sekunde], [$s$],
)

=== Abhängigkeit Weg Geschwindigkeit und Beschleunigung über die Zeit
#table(
  columns: (auto, auto),
  inset: 5pt,
  align: (center, center, center, center),
  fill: (column, _) => if column == 0 { gray },
  [*Wegfunktion*], [$s(t)$],
  [*Geschwindigkeitsfunktion*], [$v(t) = dot(s)(t)$],
  [*Beschleunigungsfunktion*], [$a(t) = dot(v)(t) = dot.double(s)(t)$],
)

=== Konstanten
#table(
  columns: (auto, auto, auto),
  inset: 5pt,
  align: (center, center, center, center),
  fill: (column, _) => if column == 0 { gray },
  [*Fallbeschleunigung*], [$g$], [$9.80665 m\/s^2$],
  [*Lichtgeschwindigkeit*], [$c$], [$2.99792458 dot 10^8 m\/s$],
  [*Gravitationskonstante*], [$G$], [$6.673 dot 10^(-11) N dot m^2\/"kg"^2$],
)

*Konservative Kraft:*
Die Kraft ist konservativ, da sie nur von Ortskoordinaten abhängt, und da $−F(x)$ als reell wertige Funktion einer Variable eine Stammfunktion besitzt.
Das Hook’schen Gesetz beschreibt eine konservative Kraft, da sie nur von Ortskoordinaten abhängt, und da $-F(x)$ als reellwertige Funktion einer Variable eine Stammfunktion besitzt
