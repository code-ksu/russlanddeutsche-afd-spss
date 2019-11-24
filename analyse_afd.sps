* Encoding: UTF-8.
comp p_russ = 100 * Russlanddeutsche / Bevölkerung.
comp p_afd = 100 * AfD / Bevölkerung.

comp p_russ_w = 100 * Russlanddeutsche / Bevölkerung * Wahlbeteiligung.
comp p_afd_w = AfD / Bevölkerung * Wahlbeteiligung.


comp hamburg=0.
if (Stadt="Hamburg") hamburg=1.
comp augsburg=0.
if (Stadt="Augsburg") augsburg=1.
comp berlin=0.
if (Stadt="Berlin") berlin=1.
comp stuttgart=0.
if (Stadt="Stuttgart") stuttgart=1.
comp leipzig=0.
if (Stadt="Leipzig") leipzig=1.
freq hamburg augsburg berlin stuttgart leipzig.


temp.
selec if (hamburg=1).

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ_w p_afd_w MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ_w=col(source(s), name("p_russ_w"))
  DATA: p_afd_w=col(source(s), name("p_afd_w"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ_w*p_afd_w))
END GPL.
temp.
selec if (hamburg =1).
corr  p_russ p_afd.

temp.
selec if (hamburg=1).


temp.
selec if (augsburg =1).

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ p_afd MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ=col(source(s), name("p_russ"))
  DATA: p_afd=col(source(s), name("p_afd"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ*p_afd))
END GPL.
temp.
selec if (augsburg =1).
corr  p_russ p_afd.

temp.
selec if (berlin =1).

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ p_afd MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ=col(source(s), name("p_russ"))
  DATA: p_afd=col(source(s), name("p_afd"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ*p_afd))
END GPL.
temp.
selec if (berlin =1).
corr  p_russ p_afd.

temp.
selec if (stuttgart =1).

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ p_afd MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ=col(source(s), name("p_russ"))
  DATA: p_afd=col(source(s), name("p_afd"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ*p_afd))
END GPL.
temp.
selec if (stuttgart =1).
corr  p_russ p_afd.

temp.
selec if (leipzig =1).

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ p_afd MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ=col(source(s), name("p_russ"))
  DATA: p_afd=col(source(s), name("p_afd"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ*p_afd))
END GPL.
temp.
selec if (leipzig =1).
corr  p_russ p_afd.

* ALLE *

GGRAPH   /GRAPHDATASET NAME="graphdataset" VARIABLES=p_russ p_afd MISSING=LISTWISE REPORTMISSING=NO
  /GRAPHSPEC SOURCE=INLINE.
BEGIN GPL
  SOURCE: s=userSource(id("graphdataset"))
  DATA: p_russ=col(source(s), name("p_russ"))
  DATA: p_afd=col(source(s), name("p_afd"))
  GUIDE: axis(dim(1), label("Russlanddeutsche in %"))
  GUIDE: axis(dim(2), label("AfD Ergebnis in %"))
  ELEMENT: point(position(p_russ*p_afd))
END GPL.

corr  p_russ p_afd.

*regr/dep p_afd/enter p_russ berlin augsburg.


