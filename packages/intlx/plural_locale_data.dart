// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// DO NOT EDIT. This file is autogenerated by script, see
// "intlx/tool/plural/code_build.dart"

/// Exposes [LocaleData] constants for use with [PluralFormat].
/// For example:
///     import 'package:intlx/plural_locale_data.dart' as plural_data;
///     main() {
///       plural_data.EN.load();
///       plural_data.DE.load();
///       // do something with [PluralFormat].
///     }
library plural_locale_data;

import 'package:intlx/intlx.dart';
import 'package:intlx/src/locale_data_impl.dart';
import 'package:intlx/src/symbols_map.dart';
import 'package:intlx/src/plural/plural_locale_list.dart';
import 'package:intlx/src/plural/plural.dart';
import 'package:intlx/src/plural/data/af.dart' as symbols_AF;
import 'package:intlx/src/plural/data/ak.dart' as symbols_AK;
import 'package:intlx/src/plural/data/am.dart' as symbols_AM;
import 'package:intlx/src/plural/data/ar.dart' as symbols_AR;
import 'package:intlx/src/plural/data/asa.dart' as symbols_ASA;
import 'package:intlx/src/plural/data/az.dart' as symbols_AZ;
import 'package:intlx/src/plural/data/be.dart' as symbols_BE;
import 'package:intlx/src/plural/data/bem.dart' as symbols_BEM;
import 'package:intlx/src/plural/data/bez.dart' as symbols_BEZ;
import 'package:intlx/src/plural/data/bg.dart' as symbols_BG;
import 'package:intlx/src/plural/data/bh.dart' as symbols_BH;
import 'package:intlx/src/plural/data/bm.dart' as symbols_BM;
import 'package:intlx/src/plural/data/bn.dart' as symbols_BN;
import 'package:intlx/src/plural/data/bo.dart' as symbols_BO;
import 'package:intlx/src/plural/data/br.dart' as symbols_BR;
import 'package:intlx/src/plural/data/brx.dart' as symbols_BRX;
import 'package:intlx/src/plural/data/bs.dart' as symbols_BS;
import 'package:intlx/src/plural/data/ca.dart' as symbols_CA;
import 'package:intlx/src/plural/data/cgg.dart' as symbols_CGG;
import 'package:intlx/src/plural/data/chr.dart' as symbols_CHR;
import 'package:intlx/src/plural/data/ckb.dart' as symbols_CKB;
import 'package:intlx/src/plural/data/cs.dart' as symbols_CS;
import 'package:intlx/src/plural/data/cy.dart' as symbols_CY;
import 'package:intlx/src/plural/data/da.dart' as symbols_DA;
import 'package:intlx/src/plural/data/de.dart' as symbols_DE;
import 'package:intlx/src/plural/data/dv.dart' as symbols_DV;
import 'package:intlx/src/plural/data/dz.dart' as symbols_DZ;
import 'package:intlx/src/plural/data/ee.dart' as symbols_EE;
import 'package:intlx/src/plural/data/el.dart' as symbols_EL;
import 'package:intlx/src/plural/data/en.dart' as symbols_EN;
import 'package:intlx/src/plural/data/eo.dart' as symbols_EO;
import 'package:intlx/src/plural/data/es.dart' as symbols_ES;
import 'package:intlx/src/plural/data/et.dart' as symbols_ET;
import 'package:intlx/src/plural/data/eu.dart' as symbols_EU;
import 'package:intlx/src/plural/data/fa.dart' as symbols_FA;
import 'package:intlx/src/plural/data/ff.dart' as symbols_FF;
import 'package:intlx/src/plural/data/fi.dart' as symbols_FI;
import 'package:intlx/src/plural/data/fil.dart' as symbols_FIL;
import 'package:intlx/src/plural/data/fo.dart' as symbols_FO;
import 'package:intlx/src/plural/data/fr.dart' as symbols_FR;
import 'package:intlx/src/plural/data/fur.dart' as symbols_FUR;
import 'package:intlx/src/plural/data/fy.dart' as symbols_FY;
import 'package:intlx/src/plural/data/ga.dart' as symbols_GA;
import 'package:intlx/src/plural/data/gl.dart' as symbols_GL;
import 'package:intlx/src/plural/data/gsw.dart' as symbols_GSW;
import 'package:intlx/src/plural/data/gu.dart' as symbols_GU;
import 'package:intlx/src/plural/data/guw.dart' as symbols_GUW;
import 'package:intlx/src/plural/data/gv.dart' as symbols_GV;
import 'package:intlx/src/plural/data/ha.dart' as symbols_HA;
import 'package:intlx/src/plural/data/haw.dart' as symbols_HAW;
import 'package:intlx/src/plural/data/he.dart' as symbols_HE;
import 'package:intlx/src/plural/data/hi.dart' as symbols_HI;
import 'package:intlx/src/plural/data/hr.dart' as symbols_HR;
import 'package:intlx/src/plural/data/hu.dart' as symbols_HU;
import 'package:intlx/src/plural/data/id.dart' as symbols_ID;
import 'package:intlx/src/plural/data/ig.dart' as symbols_IG;
import 'package:intlx/src/plural/data/ii.dart' as symbols_II;
import 'package:intlx/src/plural/data/in.dart' as symbols_IN;
import 'package:intlx/src/plural/data/is.dart' as symbols_IS;
import 'package:intlx/src/plural/data/it.dart' as symbols_IT;
import 'package:intlx/src/plural/data/iu.dart' as symbols_IU;
import 'package:intlx/src/plural/data/iw.dart' as symbols_IW;
import 'package:intlx/src/plural/data/ja.dart' as symbols_JA;
import 'package:intlx/src/plural/data/jmc.dart' as symbols_JMC;
import 'package:intlx/src/plural/data/jv.dart' as symbols_JV;
import 'package:intlx/src/plural/data/ka.dart' as symbols_KA;
import 'package:intlx/src/plural/data/kab.dart' as symbols_KAB;
import 'package:intlx/src/plural/data/kaj.dart' as symbols_KAJ;
import 'package:intlx/src/plural/data/kcg.dart' as symbols_KCG;
import 'package:intlx/src/plural/data/kde.dart' as symbols_KDE;
import 'package:intlx/src/plural/data/kea.dart' as symbols_KEA;
import 'package:intlx/src/plural/data/kk.dart' as symbols_KK;
import 'package:intlx/src/plural/data/kl.dart' as symbols_KL;
import 'package:intlx/src/plural/data/km.dart' as symbols_KM;
import 'package:intlx/src/plural/data/kn.dart' as symbols_KN;
import 'package:intlx/src/plural/data/ko.dart' as symbols_KO;
import 'package:intlx/src/plural/data/ksb.dart' as symbols_KSB;
import 'package:intlx/src/plural/data/ksh.dart' as symbols_KSH;
import 'package:intlx/src/plural/data/ku.dart' as symbols_KU;
import 'package:intlx/src/plural/data/kw.dart' as symbols_KW;
import 'package:intlx/src/plural/data/lag.dart' as symbols_LAG;
import 'package:intlx/src/plural/data/lb.dart' as symbols_LB;
import 'package:intlx/src/plural/data/lg.dart' as symbols_LG;
import 'package:intlx/src/plural/data/ln.dart' as symbols_LN;
import 'package:intlx/src/plural/data/lo.dart' as symbols_LO;
import 'package:intlx/src/plural/data/lt.dart' as symbols_LT;
import 'package:intlx/src/plural/data/lv.dart' as symbols_LV;
import 'package:intlx/src/plural/data/mas.dart' as symbols_MAS;
import 'package:intlx/src/plural/data/mg.dart' as symbols_MG;
import 'package:intlx/src/plural/data/mk.dart' as symbols_MK;
import 'package:intlx/src/plural/data/ml.dart' as symbols_ML;
import 'package:intlx/src/plural/data/mn.dart' as symbols_MN;
import 'package:intlx/src/plural/data/mo.dart' as symbols_MO;
import 'package:intlx/src/plural/data/mr.dart' as symbols_MR;
import 'package:intlx/src/plural/data/ms.dart' as symbols_MS;
import 'package:intlx/src/plural/data/mt.dart' as symbols_MT;
import 'package:intlx/src/plural/data/my.dart' as symbols_MY;
import 'package:intlx/src/plural/data/nah.dart' as symbols_NAH;
import 'package:intlx/src/plural/data/naq.dart' as symbols_NAQ;
import 'package:intlx/src/plural/data/nb.dart' as symbols_NB;
import 'package:intlx/src/plural/data/nd.dart' as symbols_ND;
import 'package:intlx/src/plural/data/ne.dart' as symbols_NE;
import 'package:intlx/src/plural/data/nl.dart' as symbols_NL;
import 'package:intlx/src/plural/data/nn.dart' as symbols_NN;
import 'package:intlx/src/plural/data/no.dart' as symbols_NO;
import 'package:intlx/src/plural/data/nr.dart' as symbols_NR;
import 'package:intlx/src/plural/data/nso.dart' as symbols_NSO;
import 'package:intlx/src/plural/data/ny.dart' as symbols_NY;
import 'package:intlx/src/plural/data/nyn.dart' as symbols_NYN;
import 'package:intlx/src/plural/data/om.dart' as symbols_OM;
import 'package:intlx/src/plural/data/or.dart' as symbols_OR;
import 'package:intlx/src/plural/data/pa.dart' as symbols_PA;
import 'package:intlx/src/plural/data/pap.dart' as symbols_PAP;
import 'package:intlx/src/plural/data/pl.dart' as symbols_PL;
import 'package:intlx/src/plural/data/ps.dart' as symbols_PS;
import 'package:intlx/src/plural/data/pt.dart' as symbols_PT;
import 'package:intlx/src/plural/data/rm.dart' as symbols_RM;
import 'package:intlx/src/plural/data/ro.dart' as symbols_RO;
import 'package:intlx/src/plural/data/rof.dart' as symbols_ROF;
import 'package:intlx/src/plural/data/ru.dart' as symbols_RU;
import 'package:intlx/src/plural/data/rwk.dart' as symbols_RWK;
import 'package:intlx/src/plural/data/sah.dart' as symbols_SAH;
import 'package:intlx/src/plural/data/saq.dart' as symbols_SAQ;
import 'package:intlx/src/plural/data/se.dart' as symbols_SE;
import 'package:intlx/src/plural/data/seh.dart' as symbols_SEH;
import 'package:intlx/src/plural/data/ses.dart' as symbols_SES;
import 'package:intlx/src/plural/data/sg.dart' as symbols_SG;
import 'package:intlx/src/plural/data/sh.dart' as symbols_SH;
import 'package:intlx/src/plural/data/shi.dart' as symbols_SHI;
import 'package:intlx/src/plural/data/sk.dart' as symbols_SK;
import 'package:intlx/src/plural/data/sl.dart' as symbols_SL;
import 'package:intlx/src/plural/data/sma.dart' as symbols_SMA;
import 'package:intlx/src/plural/data/smi.dart' as symbols_SMI;
import 'package:intlx/src/plural/data/smj.dart' as symbols_SMJ;
import 'package:intlx/src/plural/data/smn.dart' as symbols_SMN;
import 'package:intlx/src/plural/data/sms.dart' as symbols_SMS;
import 'package:intlx/src/plural/data/sn.dart' as symbols_SN;
import 'package:intlx/src/plural/data/so.dart' as symbols_SO;
import 'package:intlx/src/plural/data/sq.dart' as symbols_SQ;
import 'package:intlx/src/plural/data/sr.dart' as symbols_SR;
import 'package:intlx/src/plural/data/ss.dart' as symbols_SS;
import 'package:intlx/src/plural/data/ssy.dart' as symbols_SSY;
import 'package:intlx/src/plural/data/st.dart' as symbols_ST;
import 'package:intlx/src/plural/data/sv.dart' as symbols_SV;
import 'package:intlx/src/plural/data/sw.dart' as symbols_SW;
import 'package:intlx/src/plural/data/syr.dart' as symbols_SYR;
import 'package:intlx/src/plural/data/ta.dart' as symbols_TA;
import 'package:intlx/src/plural/data/te.dart' as symbols_TE;
import 'package:intlx/src/plural/data/teo.dart' as symbols_TEO;
import 'package:intlx/src/plural/data/th.dart' as symbols_TH;
import 'package:intlx/src/plural/data/ti.dart' as symbols_TI;
import 'package:intlx/src/plural/data/tig.dart' as symbols_TIG;
import 'package:intlx/src/plural/data/tk.dart' as symbols_TK;
import 'package:intlx/src/plural/data/tl.dart' as symbols_TL;
import 'package:intlx/src/plural/data/tn.dart' as symbols_TN;
import 'package:intlx/src/plural/data/to.dart' as symbols_TO;
import 'package:intlx/src/plural/data/tr.dart' as symbols_TR;
import 'package:intlx/src/plural/data/ts.dart' as symbols_TS;
import 'package:intlx/src/plural/data/tzm.dart' as symbols_TZM;
import 'package:intlx/src/plural/data/uk.dart' as symbols_UK;
import 'package:intlx/src/plural/data/ur.dart' as symbols_UR;
import 'package:intlx/src/plural/data/ve.dart' as symbols_VE;
import 'package:intlx/src/plural/data/vi.dart' as symbols_VI;
import 'package:intlx/src/plural/data/vun.dart' as symbols_VUN;
import 'package:intlx/src/plural/data/wa.dart' as symbols_WA;
import 'package:intlx/src/plural/data/wae.dart' as symbols_WAE;
import 'package:intlx/src/plural/data/wo.dart' as symbols_WO;
import 'package:intlx/src/plural/data/xh.dart' as symbols_XH;
import 'package:intlx/src/plural/data/xog.dart' as symbols_XOG;
import 'package:intlx/src/plural/data/yo.dart' as symbols_YO;
import 'package:intlx/src/plural/data/zh.dart' as symbols_ZH;
import 'package:intlx/src/plural/data/zu.dart' as symbols_ZU;

part 'package:intlx/src/plural/plural_all_data_constant.dart';
part 'package:intlx/src/plural/plural_locale_data_constants.dart';