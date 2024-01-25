#import "../utils.typ": *

#section("Statik")

#subsection("Schwerkraft")
m1 = Massepunkt 1 \
m2 = Massepunkt 2 \

*Gravitationsgesetz:* \
$ F_G = G frac(m_1 m_2, r^2) $

*Gravitationskonstante G:* \
$ G = 6.67 dot 10^(-11) frac("m"^3, k g dot s^2) $

*Fallbeschleuningung g:* \
$ m_E = 5.972 dot 10^24 k g $
$ r_E = 6378 "km" $

$ g = 6.67 dot 10^(-11) dot frac(m_E, r_E^2) $
$ g = 9.81 frac("m", "s"^2) $

#subsection("Reibung")
Wenn Körper auf horizontale Fläche liegt:
$ F_G = - F_N $

*Gleitreibungskraft:* \
$F_N$ = Gleitreibung \
$mu_G$ = Gleitreibungskoeffizient \

$ F_R = mu_G dot F_N $

*Haftreibungskraft:* \
$F_N$ = Gleitreibung \
$mu_H$ = Haftreibungskoeffizient \

$ F_R = mu_H dot F_N $

#image("../figures/reibung.png", width: 75%)

#colbreak()
#subsection("Drehmoment")
Linke Hand Regel (Schraubenzieher): \ // todo

*Drehmoment M:* \
$a$ = Hebellänge
$ M = a dot F $

#image("../figures/drehmoment.png")

#subsection("Deformierbarer Körper")
A = Fläche $m^2$, \
F = Kraft senkrecht zur Fläche $N$, \
E = Elastizitätsmodul $N m^(-2)$, \
$mu$ = Poissonzahl (< 0.5), \
G = Schubmodul\
p = Druckspannung
#subsubsection("Spannung")

*Zugspannung* $sigma$: \
$ sigma := frac(F_⊥, A) = -p $
$ sigma dot E = F / A $

*Druckspannung* $p$: \
$ p = F / A = - sigma $

*Hook'sche Gesetz:* \ 
Relative Änderung [0-1] \
$ epsilon = sigma / E $

#subsubsection("Dehnung")
A = Querschnittsfläche \

*Verlängerung* $ triangle.stroked.t l$: \
$ triangle.stroked.t l = l F / A $

*Dehnung* $epsilon$: \
$ epsilon = frac(triangle.stroked.t l, l) $

#colbreak()
*Schubspannung* $tau$: \
$ tau := frac(F_∥, A) $

*Scherwinkel* $gamma$: \
$ gamma = frac(1, G) dot tau $

*Schubmodul* $G$ \
$ G = frac(E, 2 dot (1 + mu)) $

*Querkontraktion* $epsilon_q$: \
$d$ = Urprungsdicke \ 
$triangle.stroked.t d$ = Dickeänderung \

$ epsilon_q = frac(triangle.stroked.t d, d) $
$ epsilon_q = -mu dot epsilon $

#subsubsection("Kompression")

*Kompression:* \
$triangle.stroked.t p$ = Druckänderung \ 
$kappa$ = Kompressibilität

$ frac(triangle.stroked.t V, V) = -kappa dot triangle.stroked.t p $

#subsubsection("Schubbeanspruchung")
*Torsionsmodul* $G$: \
$ G = frac(E, 2(1 + mu)) $

#subsection("Beispiele")
#subsubsection("Torsionsfeder")
c = Konstante \
$phi$ = Winkel der Drehung \
G = Schubmodul \
l = Länge der Torsionsfeder \
r = Radius der Torsionsfeder \

*Drehmoment Torsionsfeder:* \
$ M = c dot phi $

*Federkonstante:* \
$ c = frac(pi G r^4, 2l) $

#colbreak()
*Bei M konstant:* \
$ l arrow.r 2l => phi arrow.r 2 phi $ 
$ r arrow.r 2r => phi arrow.r phi / 16 $ 
$ E arrow.r 2E => phi arrow.r phi / 2 $ 
$ mu (0.2) arrow.r mu (0.3) => phi(0.2) < phi(0.3) $ 

#subsubsection("Schraubenfeder")
k = Federkonstante \
n = Windungszahl \
R = Windungsradius \
r = Drahtdurchmesser \
x = Auslenkung \

$ k = frac(G r^4, 4n R^3) $
$ F = k x $
$ x = F / k = frac(4n R^3 dot F, G r^4) $

*Bei konstanter Kraft* $F$: \
$ r arrow.r 2r => x arrow.r x / 16 $
$ R arrow.r 2R => x arrow.r 8x $
$ E arrow.r 2E => x arrow.r x / 2 $
$ mu (0.2) arrow.r mu (0.3) => x "wird grösser" $

#subsubsection("Plattfeder")
b = Breite Material \
h = Höhe Material \
l = Länge Material \
p = Dichte des Materials \
E = Elastizitätsmodul \
z = Auslenkung \

*Durchbiegung am Ende:* \
$ z = frac(4l^3, E b h^3) $

*Durchbiegung in der Mitte:* \
$ z = frac(5p g l^4, 32 E h^2) $