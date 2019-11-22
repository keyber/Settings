default  partial alphanumeric_keys
xkb_symbols "basic" {

    include "latin"

    name[Group1]="French";

    key <AE01>	{ [ ampersand,          1,  onesuperior,   exclamdown ]	};
    key <AE02>	{ [    eacute,          2,   asciitilde,    oneeighth ]	};
    key <AE03>	{ [  quotedbl,          3,   numbersign,     sterling ]	};
    key <AE04>	{ [apostrophe,          4,    braceleft,       dollar ]	};
    key <AE05>	{ [ parenleft,          5,  bracketleft, threeeighths ]	};
    key <AE06>	{ [     minus,          6,          bar,  fiveeighths ]	};
    key <AE07>	{ [    egrave,          7,        grave, seveneighths ]	};
    key <AE08>	{ [underscore,          8,    backslash,    trademark ]	};
    key <AE09>	{ [  ccedilla,          9,  asciicircum,    plusminus ]	};
    key <AE10>	{ [    agrave,          0,           at,       degree ]	};
    key <AE11>	{ [parenright,     degree, bracketright, questiondown ]	};
    key <AE12>	{ [     equal,       plus,   braceright,  dead_ogonek ]	};

    key <AD01>	{ [         a,          A,           ae,           AE ]	};
    key <AD02>	{ [         z,          Z, guillemotleft,        less ]	};
    key <AD03>	{ [         e,          E,     EuroSign,         cent ]	};
    key <AD11>	{ [dead_circumflex, dead_diaeresis, dead_diaeresis, dead_abovering ] };
    key <AD12>	{ [    dollar,   sterling,     currency,  dead_macron ]	};

    key <AC01>	{ [         q,          Q,           at,  Greek_OMEGA ]	};
    key <AC10>	{ [         m,          M,           mu,    masculine ]	};
    key <AC11>	{ [    ugrave,    percent, dead_circumflex, dead_caron]	};
    key <TLDE>	{ [twosuperior, asciitilde,     notsign,      notsign ]	};

    key <BKSL>	{ [  asterisk,         mu,   dead_grave,   dead_breve ]	};
    key <AB01>	{ [         w,          W,      lstroke,      Lstroke ]	};
    key <AB07>	{ [     comma,   question,   dead_acute, dead_doubleacute ] };
    key <AB08>	{ [ semicolon,     period, horizconnector,   multiply ]	};
    key <AB09>	{ [     colon,      slash, periodcentered,   division ]	};
    key <AB10>	{ [    exclam,    section, dead_belowdot, dead_abovedot ] };

    include "level3(ralt_switch)"
};

partial alphanumeric_keys
xkb_symbols "olpc" {
    // Contact: Sayamindu Dasgupta <sayamindu@laptop.org>
    include "fr(basic)"

    name[Group1]="French";

    key <I219>	{ [ less, greater ]	};
    key <AD11>	{ [ dead_circumflex, dead_diaeresis, notsign, dead_abovering ]	};
    key <AB08>	{ [ semicolon, period, underscore, multiply ]	};
    key <TLDE>	{ [ twosuperior, asciitilde, VoidSymbol, VoidSymbol ]	};

    // Some keys only have the Shift+AltGr character printed on them (alongside
    // the unmodified one). Make such keys shift-invariant so that the printed
    // value is achieved by pressing AltGr or Shift+AltGr.
    key <AB02>	{ [ x,  X,  guillemotright, guillemotright ]	};
    key <AC02>	{ [ s,  S,  ssharp, ssharp ]	};
    key <AD02>	{ [ z,  Z,  guillemotleft, guillemotleft ]	};
};

partial alphanumeric_keys
xkb_symbols "Sundeadkeys" {

    // Modifies the basic French layout to use the Sun dead keys

    include "fr(basic)"

    key <AD11>	{ [dead_circumflex, dead_diaeresis ]	};
    key <AB07>	{ [comma,   question,  dead_acute, dead_doubleacute ]	};
};

partial alphanumeric_keys
xkb_symbols "sundeadkeys" {
    include "fr(Sundeadkeys)"

    name[Group1]="French (Sun dead keys)";
};

partial alphanumeric_keys
xkb_symbols "nodeadkeys" {

    // Modifies the basic French layout to eliminate all dead keys

    include "fr(basic)"

    name[Group1]="French (eliminate dead keys)";

    key <AE12>	{ [     equal,       plus,   braceright,       ogonek ]	};
    key <AD11>	{ [asciicircum,  diaeresis ]	};
    key <AD12>	{ [    dollar,   sterling,     currency,       macron ]	};
    key <AC11>	{ [    ugrave,    percent,  asciicircum,        caron ]	};
    key <BKSL>	{ [  asterisk,         mu,        grave,        breve ]	};
    key <AB07>	{ [     comma,   question,        acute,  doubleacute ]	};
    key <AB10>	{ [    exclam,    section, dead_belowdot,    abovedot ]	};
};


// Unicode French derivative
// Loose refactoring of the historic Linux French keyboard layout
//
// Copyright © 2006-2008 Nicolas Mailhot <nicolas.mailhot @ laposte.net>
//
// Credits (fr-latin1, fr-latin0, fr-latin9)
//   © 199x-1996 René Cougnenc ✝
//   © 1997-2002 Guylhem Aznar <clavier @ externe.net>
//   © 2003-2006 Nicolas Mailhot <nicolas.mailhot @ laposte.net>
//
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
// │ ³ ¸ │ 1 ̨  │ 2 É │ 3 ˘ │ 4 — │ 5 – │ 6 ‑ │ 7 È │ 8 ™ │ 9 Ç │ 0 À │ ° ≠ │ + ± ┃ ⌫ Retour┃
// │ ² ¹ │ & ˇ │ é ~ │ " # │ ' { │ ( [ │ - | │ è ` │ _ \ │ ç ^ │ à @ │ ) ] │ = } ┃  arrière┃
// ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
// ┃       ┃ A Æ │ Z Â │ E ¢ │ R Ê │ T Þ │ Y Ÿ │ U Û │ I Î │ O Œ │ P Ô │ ¨ ˚ │ £ Ø ┃Entrée ┃
// ┃Tab ↹  ┃ a æ │ z â │ e € │ r ê │ t þ │ y ÿ │ u û │ i î │ o œ │ p ô │ ^ ~ │ $ ø ┃   ⏎   ┃
// ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
// ┃        ┃ Q Ä │ S „ │ D Ë │ F ‚ │ G ¥ │ H Ð │ J Ü │ K Ï │ L Ŀ │ M Ö │ % Ù │ µ ̄  ┃      ┃
// ┃Maj ⇬   ┃ q ä │ s ß │ d ë │ f ‘ │ g ’ │ h ð │ j ü │ k ï │ l ŀ │ m ö │ ù ' │ * ` ┃      ┃
// ┣━━━━━━━┳┹────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┲┷━━━━━┻━━━━━━┫
// ┃       ┃ > ≥ │ W “ │ X ” │ C ® │ V ← │ B ↑ │ N → │ ? … │ . . │ / ∕ │ § − ┃             ┃
// ┃Shift ⇧┃ < ≤ │ w « │ x » │ c © │ v ⍽ │ b ↓ │ n ¬ │ , ¿ │ ; × │ : ÷ │ ! ¡ ┃Shift ⇧      ┃
// ┣━━━━━━━╋━━━━━┷━┳━━━┷━━━┱─┴─────┴─────┴─────┴─────┴─────┴───┲━┷━━━━━╈━━━━━┻━┳━━━━━━━┳━━━┛
// ┃       ┃       ┃       ┃ ␣         Espace fine insécable ⍽ ┃       ┃       ┃       ┃
// ┃Ctrl   ┃Meta   ┃Alt    ┃ ␣ Espace       Espace insécable ⍽ ┃AltGr ⇮┃Menu   ┃Ctrl   ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┛
partial alphanumeric_keys
xkb_symbols "oss" {

    include "latin"
    include "level3(ralt_switch)"
    include "nbsp(level4nl)"
    include "keypad(oss)"

    name[Group1]="French (alternative)";

    // First row
    key <TLDE>	{ [      twosuperior,    threesuperior,          onesuperior,          dead_cedilla ] }; // ² ³ ¹ ¸
    key <AE01>	{ [        ampersand,                1,           dead_caron,           dead_ogonek ] }; // & 1 ˇ ̨
    key <AE02>	{ [           eacute,                2,           asciitilde,                Eacute ] }; // é 2 ~ É
    key <AE03>	{ [         quotedbl,                3,           numbersign,            dead_breve ] }; // " 3 # ˘
    key <AE04>	{ [       apostrophe,                4,            braceleft,             0x1002014 ] }; // ' 4 { — (tiret cadratin)
    key <AE05>	{ [        parenleft,                5,          bracketleft,             0x1002013 ] }; // ( 5 [ – (tiret demi-cadratin)
    key <AE06>	{ [            minus,                6,                  bar,             0x1002011 ] }; // - 6 | ‑ (tiret insécable)
    key <AE07>	{ [           egrave,                7,                grave,                Egrave ] }; // è 7 ` È
    key <AE08>	{ [       underscore,                8,            backslash,             trademark ] }; // _ 8 \ ™
    key <AE09>	{ [         ccedilla,                9,          asciicircum,              Ccedilla ] }; // ç 9 ^ Ç
    key <AE10>	{ [           agrave,                0,                   at,                Agrave ] }; // à 0 @ À
    key <AE11>	{ [       parenright,           degree,         bracketright,              notequal ] }; // ) ° ] ≠
    key <AE12>	{ [            equal,             plus,           braceright,             plusminus ] }; // = + } ±

    // Second row
    key <AD01>	{ [                a,                A,                   ae,                    AE ] }; // a A æ Æ
    key <AD02>	{ [                z,                Z,          acircumflex,           Acircumflex ] }; // z Z â Â
    key <AD03>	{ [                e,                E,             EuroSign,                  cent ] }; // e E € ¢
    key <AD04>	{ [                r,                R,          ecircumflex,           Ecircumflex ] }; // r R ê Ê
    key <AD05>	{ [                t,                T,                thorn,                 THORN ] }; // t T þ Þ
    key <AD06>	{ [                y,                Y,           ydiaeresis,            Ydiaeresis ] }; // y Y ÿ Ÿ
    key <AD07>	{ [                u,                U,          ucircumflex,           Ucircumflex ] }; // u U û Û
    key <AD08>	{ [                i,                I,          icircumflex,           Icircumflex ] }; // i I î Î
    key <AD09>	{ [                o,                O,                   oe,                    OE ] }; // o O œ Œ
    key <AD10>	{ [                p,                P,          ocircumflex,           Ocircumflex ] }; // p P ô Ô
    key <AD11>	{ [  dead_circumflex,   dead_diaeresis,           dead_tilde,        dead_abovering ] }; // ^ ̈ ̃ ˚
    key <AD12>	{ [           dollar,         sterling,               oslash,              Ooblique ] }; // $ £ ø Ø

    // Third row
    key <AC01>	{ [                q,                Q,           adiaeresis,            Adiaeresis ] }; // q Q ä Ä
    key <AC02>	{ [                s,                S,               ssharp,    doublelowquotemark ] }; // s S ß „
    key <AC03>	{ [                d,                D,           ediaeresis,            Ediaeresis ] }; // d D ë Ë
    key <AC04>	{ [                f,                F,  leftsinglequotemark,    singlelowquotemark ] }; // f F ‘ ‚
    key <AC05>	{ [                g,                G, rightsinglequotemark,                   yen ] }; // g G ’ ¥
    key <AC06>	{ [                h,                H,                  eth,                   ETH ] }; // h H ð Ð
    key <AC07>	{ [                j,                J,           udiaeresis,            Udiaeresis ] }; // j J ü Ü
    key <AC08>	{ [                k,                K,           idiaeresis,            Idiaeresis ] }; // k K ï Ï
    key <AC09>	{ [                l,                L,            0x1000140,             0x100013F ] }; // l L ŀ Ŀ
    key <AC10>	{ [                m,                M,           odiaeresis,            Odiaeresis ] }; // m M ö Ö
    key <AC11>	{ [           ugrave,          percent,           dead_acute,                Ugrave ] }; // ù % ' Ù
    key <BKSL>	{ [         asterisk,               mu,           dead_grave,           dead_macron ] }; // * µ ` ̄

    // Fourth row
    key <LSGT>  { [             less,          greater,        lessthanequal,      greaterthanequal ] }; // < > ≤ ≥
    key <AB01>  { [                w,                W,        guillemotleft,   leftdoublequotemark ] }; // w W « “
    key <AB02>  { [                x,                X,       guillemotright,  rightdoublequotemark ] }; // x X » ”
    key <AB03>  { [                c,                C,            copyright,            registered ] }; // c C © ®
    key <AB04>  { [                v,                V,            0x100202F,             leftarrow ] }; // v V ⍽ ← (espace fine insécable)
    key <AB05>  { [                b,                B,            downarrow,               uparrow ] }; // b B ↓ ↑
    key <AB06>  { [                n,                N,              notsign,            rightarrow ] }; // n N ¬ →
    key <AB07>  { [            comma,         question,         questiondown,             0x1002026 ] }; // , ? ¿ …
    key <AB08>  { [        semicolon,           period,             multiply,             0x10022C5 ] }; // ; . × ⋅
    key <AB09>  { [            colon,            slash,             division,             0x1002215 ] }; // : / ÷ ∕
    key <AB10>  { [           exclam,          section,           exclamdown,             0x1002212 ] }; // ! § ¡ −
};

partial alphanumeric_keys
xkb_symbols "oss_latin9" {

    // Restricts the fr(oss) layout to latin9 symbols

    include "fr(oss)"
    include "keypad(oss_latin9)"

    name[Group1]="French (alternative, Latin-9 only)";

    // First row
    key <AE01>	{ [        ampersand,                1,           dead_caron,          dead_cedilla ] }; // & 1 ˇ ¸
    key <AE03>	{ [         quotedbl,                3,           numbersign,            dead_tilde ] }; // " 3 # ~
    key <AE04>	{ [       apostrophe,                4,            braceleft,            underscore ] }; // ' 4 { _
    key <AE05>	{ [        parenleft,                5,          bracketleft,                 minus ] }; // ( 5 [ -
    key <AE06>	{ [            minus,                6,                  bar,                 minus ] }; // - 6 | -
    key <AE08>	{ [       underscore,                8,            backslash,             backslash ] }; // _ 8 \ \
    key <AE11>	{ [       parenright,           degree,         bracketright,                 equal ] }; // ) ° ] =

    // Third row
    key <AC02>	{ [                s,                S,               ssharp,         guillemotleft ] }; // s S ß «
    key <AC04>	{ [                f,                F,           apostrophe,            apostrophe ] }; // f F ' '
    key <AC05>	{ [                g,                G,           apostrophe,                   yen ] }; // g G ' ¥
    key <AC09>	{ [                l,                L,       periodcentered,        periodcentered ] }; // l L · ·
    key <BKSL>	{ [         asterisk,               mu,           dead_grave,       dead_circumflex ] }; // * µ ` ^

    // Fourth row
    key <LSGT>  { [             less,          greater,                 less,               greater ] }; // < > < >
    key <AB01>  { [                w,                W,        guillemotleft,         guillemotleft ] }; // w W « «
    key <AB02>  { [                x,                X,       guillemotright,        guillemotright ] }; // x X » »
    key <AB04>  { [                v,                V,         nobreakspace,                  less ] }; // v V ⍽ < (espace insécable)
    key <AB05>  { [                b,                B,                minus,           asciicircum ] }; // b B - ^
    key <AB06>  { [                n,                N,              notsign,               greater ] }; // n N ¬ >
    key <AB07>  { [            comma,         question,         questiondown,                period ] }; // , ? ¿ .
    key <AB08>  { [        semicolon,           period,             multiply,        periodcentered ] }; // ; . × ·
    key <AB09>  { [            colon,            slash,             division,                 slash ] }; // : / ÷ /
    key <AB10>  { [           exclam,          section,           exclamdown,                 minus ] }; // ! § ¡ -
};

partial alphanumeric_keys
xkb_symbols "oss_Sundeadkeys" {

    // Modifies the basic fr(oss) layout to use the Sun dead keys

    include "fr(oss)"

    key <TLDE>	{ [      twosuperior,    threesuperior,          onesuperior,          dead_cedilla ] }; // ¹ ² ³ ¸

    key <AD11>	{ [  dead_circumflex,   dead_diaeresis,           dead_tilde,        dead_abovering ] }; // ^ ̈ ̃ ˚

    key <AC11>	{ [           ugrave,          percent,           dead_acute,                Ugrave ] }; // ù % ' Ù
    key <BKSL>	{ [         asterisk,               mu,           dead_grave,           dead_macron ] }; // * µ ` ̄
};

partial alphanumeric_keys
xkb_symbols "oss_sundeadkeys" {

    include "fr(oss_Sundeadkeys)"

    name[Group1]="French (alternative, Sun dead keys)";
};

partial alphanumeric_keys
xkb_symbols "oss_nodeadkeys" {

    // Modifies the basic fr(oss) layout to eliminate all dead keys

    include "fr(oss)"

    name[Group1]="French (alternative, eliminate dead keys)";

    key <TLDE>	{ [      twosuperior,    threesuperior,          onesuperior,               cedilla ] }; // ² ³ ¹ ¸
    key <AE01>	{ [        ampersand,                1,                caron,                ogonek ] }; // & 1 ˇ ̨
    key <AE03>	{ [         quotedbl,                3,           numbersign,                 breve ] }; // " 3 # ˘

    key <AD11>	{ [      asciicircum,        diaeresis,           asciitilde,                 Aring ] }; // ^ ̈ ̃ Å
    key <AC11>	{ [           ugrave,          percent,                acute,                Ugrave ] }; // ù % ' Ù
    key <BKSL>	{ [         asterisk,               mu,                grave,                macron ] }; // * µ ` ̄
};


// Historic Linux French keyboard layout (fr-latin9)
// Copyright (c) 199x, 2002 Rene Cougnenc (original work)
//                          Guylhem Aznar <clavier @ externe.net> (maintainer)
//                          Nicolas Mailhot <Nicolas.Mailhot @ laposte.net>
//                              (XFree86 submission)
//
// This layout has long been distributed and refined outside official channels.
// To this day it remains more feature-rich and popular than the 'fr' layout.
//
// This layout is derived from an original version by Guylhem Aznar.
// The original version is always available from:
// http://en.tldp.org/HOWTO/Francophones-HOWTO.html
// and is distributed under a GPL license.
//
// The author has given permission for this derived version to be distributed
// under the standard XFree86 license. He would like all changes to this
// version to be sent to him at <clavier @ externe.net>, so he can sync
// the identically named linux console map (kbd, linux-console) and his
// out-of-tree GPL version.
//
// Now follows the keyboard design description in French.
// (If you can't read it you probably have no business changing this file anyway:)
//
// Les accents circonflexes des principales voyelles sont obtenus avec
// la touche Alt_Gr, les trémas sont obtenus par Alt_Gr + Shift.
//
//  ____                                     _________ _____________ _______
// | S A| S = Shift,  A = AltGr + Shift     | Imprime | Arrêt défil | Pause |
// | s a| s = normal, a = AltGr             |  Exec   |             | Halte |
//  ¯¯¯¯                                     ¯¯¯¯¯¯¯¯¯ ¯¯¯¯¯¯¯¯¯¯¯¯¯ ¯¯¯¯¯¯¯
//  ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ ____ _______
// | œ "| 1 ·| 2 É| 3 ,| 4 '| 5 "| 6 || 7 È| 8 ¯| 9 Ç| 0 À| ° ÿ| + °| <--   |
// | Œ "| & '| é ~| " #| ' {| ( [| - || è `| _ \| ç ^| à @| ) ]| = }|       |
//  ========================================================================
// | |<-  | A ä| Z Å| E ¢| R Ç| T Þ| Y Ý| U ü| I ï| O ö| P '| " `| $ ë|   , |
// |  ->| | a â| z å| e €| r ç| t þ| y ý| u û| i î| o ô| p ¶| ^ ~| £ ê| <-' |
//  ===================================================================¬    |
// |       | Q Ä| S Ø| D Ë| F ª| G Æ| H Ð| J Ü| K Ï| L Ö| M º| % Ù| µ ¥|    |
// | MAJ   | q Â| s ø| d Ê| f ±| g æ| h ð| j Û| k Î| l Ô| m ¹| ù ²| * ³|    |
//  ========================================================================
// | ^   | >  | W  | X  | C  | V  | B  | N  | ?  | .  | /  | §  |     ^     |
// | |   | < || w «| x »| c ©| v ®| b ß| n ¬| , ¿| ; ×| : ÷| ! ¡|     |     |
//  ========================================================================
// |      |      |      |                       |       |      |     |      |
// | Ctrl | Super| Alt  | Space    Nobreakspace | AltGr | Super|Menu | Ctrl |
//  ¯¯¯¯¯¯ ¯¯¯¯¯¯ ¯¯¯¯¯¯ ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯ ¯¯¯¯¯¯¯ ¯¯¯¯¯¯ ¯¯¯¯¯ ¯¯¯¯¯¯
//
//
//		Si les touches mortes fonctionnent, utiliser les accents dits
//		« morts », i.e. fonctionnant comme l'accent circonflexe & le
//		tréma des machines à écrire ; sont disponibles :
//
// (^) : accent circonflexe,
// Shift+(^) : tréma,
// Shift+AltGr+(^) : tilde,
// AltGr+(1) : accent aigu,
// AltGr+(7) : accent grave
//
// Pour s'en servir, procéder comme avec l'accent circonflexe & le tréma
// sur les vielles machines à écrire :
//
// AltGr+(1) puis e : é
// AltGr+(1) puis E : É
//
partial alphanumeric_keys

xkb_symbols "latin9" {

    include "latin"
    include "nbsp(level3)"

    name[Group1]="French (legacy, alternative)";

    key <TLDE>	{ [              oe,              OE, leftdoublequotemark, rightdoublequotemark ] };
    key <AE01>	{ [       ampersand,               1,          dead_acute,       periodcentered ] };
    key <AE02>	{ [          eacute,               2,          asciitilde,               Eacute ] };
    key <AE03>	{ [        quotedbl,               3,          numbersign,              cedilla ] };
    key <AE04>	{ [      apostrophe,               4,           braceleft,                acute ] };
    key <AE05>	{ [       parenleft,               5,         bracketleft,            diaeresis ] };
    key <AE06>	{ [           minus,               6,                 bar,            brokenbar ] };
    key <AE07>	{ [          egrave,               7,          dead_grave,               Egrave ] };
    key <AE08>	{ [      underscore,               8,           backslash,               macron ] };
    key <AE09>	{ [        ccedilla,               9,         asciicircum,             Ccedilla ] };
    key <AE10>	{ [          agrave,               0,                  at,               Agrave ] };
    key <AE11>	{ [      parenright,          degree,        bracketright,           ydiaeresis ] };
    key <AE12>	{ [           equal,            plus,          braceright,       dead_abovering ] };

    key <AD01>	{ [               a,               A,         acircumflex,           adiaeresis ] };
    key <AD02>	{ [               z,               Z,               aring,                Aring ] };
    key <AD03>	{ [               e,               E,            EuroSign,                 cent ] };
    key <AD04>	{ [               r,               R,            ccedilla,             Ccedilla ] };
    key <AD05>	{ [               t,               T,               thorn,                THORN ] };
    key <AD06>	{ [               y,               Y,              yacute,               Yacute ] };
    key <AD07>	{ [               u,               U,         ucircumflex,           udiaeresis ] };
    key <AD08>	{ [               i,               I,         icircumflex,           idiaeresis ] };
    key <AD09>	{ [               o,               O,         ocircumflex,           odiaeresis ] };
    key <AD10>	{ [               p,               P,           paragraph,                grave ] };
    key <AD11>	{ [ dead_circumflex,  dead_diaeresis,          dead_tilde,           apostrophe ] };
    key <AD12>	{ [          dollar,	    sterling,         ecircumflex,           ediaeresis ] };

    key <AC01>	{ [               q,               Q,         Acircumflex,           Adiaeresis ] };
    key <AC02>	{ [               s,               S,              oslash,             Ooblique ] };
    key <AC03>	{ [               d,               D,         Ecircumflex,           Ediaeresis ] };
    key <AC04>	{ [               f,               F,           plusminus,          ordfeminine ] };
    key <AC05>	{ [               g,               G,                  ae,                   AE ] };
    key <AC06>	{ [               h,               H,                 eth,                  ETH ] };
    key <AC07>	{ [               j,               J,         Ucircumflex,           Udiaeresis ] };
    key <AC08>	{ [               k,               K,         Icircumflex,           Idiaeresis ] };
    key <AC09>	{ [               l,               L,         Ocircumflex,           Odiaeresis ] };
    key <AC10>	{ [               m,               M,         onesuperior,            masculine ] };
    key <AC11>	{ [          ugrave,         percent,         twosuperior,               Ugrave ] };
    key <BKSL>  { [        asterisk,              mu,       threesuperior,                  yen ] };

    key <LSGT>	{ [            less,         greater,                 bar                       ] };
    key <AB01>	{ [               w,               W,       guillemotleft	        	] };
    key <AB02>	{ [               x,               X,      guillemotright                       ] };
    key <AB03>	{ [               c,               C,           copyright                       ] };
    key <AB04>	{ [               v,               V,          registered		        ] };
    key <AB05>	{ [               b,               B,              ssharp                       ] };
    key <AB06>	{ [               n,               N,             notsign                       ] };
    key <AB07>	{ [           comma,        question,        questiondown                       ] };
    key <AB08>	{ [       semicolon,          period,            multiply		        ] };
    key <AB09>	{ [           colon,           slash,            division                       ] };
    key <AB10>	{ [          exclam,         section,          exclamdown                       ] };

    // French uses a comma as decimal separator, but keyboards are labeled with a period
    // Will take effect when KP_Decimal is mapped to the locale decimal separator
    key <KPDL>  { [       KP_Delete,      KP_Decimal,           KP_Delete,           KP_Decimal ] };

    include "level3(ralt_switch)"
};

partial alphanumeric_keys
xkb_symbols "latin9_Sundeadkeys" {

    // Modifies the basic fr-latin9 layout to use the Sun dead keys

    include "fr(latin9)"

    key <AE01>	{ [       ampersand,               1,         dead_acute,       periodcentered ] };
    key <AE07>	{ [          egrave,               7,         dead_grave,               Egrave ] };
    key <AD11>	{ [ dead_circumflex,  dead_diaeresis,         dead_tilde,           apostrophe ] };
};

partial alphanumeric_keys
xkb_symbols "latin9_sundeadkeys" {

    include "fr(latin9_Sundeadkeys)"

    name[Group1]="French (legacy, alternative, Sun dead keys)";
};

partial alphanumeric_keys
xkb_symbols "latin9_nodeadkeys" {

    // Modifies the basic fr-latin9 layout to eliminate all dead keys

    include "fr(latin9)"

    name[Group1]="French (legacy, alternative, eliminate dead keys)";

    key <AE01>	{ [       ampersand,               1,          apostrophe,       periodcentered ] };
    key <AE07>	{ [          egrave,               7,               grave,               Egrave ] };
    key <AE12>	{ [           equal,            plus,          braceright         	        ] };
    key <AD11>	{ [	asciicircum,  	   diaeresis,          asciitilde,           apostrophe ] };
};

// Bépo : Improved ergonomic french keymap using Dvorak method.
// Built by community on 'Dvorak Fr / Bépo' :
// see http://www.clavier-dvorak.org/wiki/ to join and help.
// XOrg integration (1.0rc2 version) in 2008
// by Frédéric Boiteux <fboiteux at free dot fr>
//
// Bépo layout (1.0rc2 version) for a pc105 keyboard (french) :
// ┌─────┐
// │ S A │   S = Shift,  A = AltGr + Shift
// │ s a │   s = normal, a = AltGr
// └─────┘
//
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
// │ # ¶ │ 1 „ │ 2 “ │ 3 ” │ 4 ≤ │ 5 ≥ │ 6   │ 7 ¬ │ 8 ¼ │ 9 ½ │ 0 ¾ │ ° ′ │ ` ″ ┃ ⌫ Retour┃
// │ $ – │ " — │ « < │ » > │ ( [ │ ) ] │ @ ^ │ + ± │ - − │ / ÷ │ * × │ = ≠ │ % ‰ ┃  arrière┃
// ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
// ┃       ┃ B ¦ │ É ˝ │ P § │ O Œ │ È ` │ !   │ V   │ D Ð │ L   │ J Ĳ │ Z Ə │ W   ┃Entrée ┃
// ┃Tab ↹  ┃ b | │ é ˊ │ p & │ o œ │ è ` │ ˆ ¡ │ v ˇ │ d ð │ l / │ j ĳ │ z ə │ w ̆  ┃   ⏎   ┃
// ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
// ┃        ┃ A Æ │ U Ù │ I ˙ │ E ¤ │ ; ̛  │ C ſ │ T Þ │ S ẞ │ R ™ │ N   │ M º │ Ç , ┃      ┃
// ┃Maj ⇬   ┃ a æ │ u ù │ i ̈  │ e € │ , ’ │ c © │ t þ │ s ß │ r ® │ n ˜ │ m ¯ │ ç ¸ ┃      ┃
// ┣━━━━━━━┳┹────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┲┷━━━━━┻━━━━━━┫
// ┃       ┃ Ê   │ À   │ Y ‘ │ X ’ │ : · │ K   │ ? ̉  │ Q ̣  │ G   │ H ‡ │ F ª ┃             ┃
// ┃Shift ⇧┃ ê / │ à \ │ y { │ x } │ . … │ k ~ │ ' ¿ │ q ˚ │ g µ │ h † │ f ˛ ┃Shift ⇧      ┃
// ┣━━━━━━━╋━━━━━┷━┳━━━┷━━━┱─┴─────┴─────┴─────┴─────┴─────┴───┲━┷━━━━━╈━━━━━┻━┳━━━━━━━┳━━━┛
// ┃       ┃       ┃       ┃ Espace inséc.   Espace inséc. fin ┃       ┃       ┃       ┃
// ┃Ctrl   ┃Meta   ┃Alt    ┃ ␣ (Espace)      _               ␣ ┃AltGr ⇮┃Menu   ┃Ctrl   ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┛
partial alphanumeric_keys
xkb_symbols "bepo" {

    include "level3(ralt_switch)"
    include "keypad(oss)"

    name[Group1]= "French (Bepo, ergonomic, Dvorak way)";

    // First row
    key <TLDE> { [          dollar,   numbersign,        endash,       paragraph ] }; // $ # – ¶
    key <AE01> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [        quotedbl,            1,         emdash, doublelowquotemark ] }; // " 1 — „
    key <AE02> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [   guillemotleft,            2,           less,  leftdoublequotemark ] }; // « 2 < “
    key <AE03> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [  guillemotright,            3,        greater, rightdoublequotemark ] }; // » 3 > ”
    key <AE04> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [       parenleft,            4,    bracketleft,      lessthanequal ] }; // ( 4 [ ≤
    key <AE05> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [      parenright,            5,   bracketright,   greaterthanequal ] }; // ) 5 ] ≥
    key <AE06> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [              at,            6,    asciicircum                 ] }; // @ 6 ^
    key <AE07> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [            plus,            7,      plusminus,        notsign ] }; // + 7 ± ¬
    key <AE08> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [           minus,            8,          U2212,     onequarter ] }; // - 8 − ¼
    key <AE09> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [           slash,            9,       division,        onehalf ] }; // / 9 ÷ ½
    key <AE10> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [        asterisk,            0,       multiply,  threequarters ] }; // * 0 × ¾
    key <AE11> { [           equal,       degree,       notequal,        minutes ] }; // = ° ≠ ′
    key <AE12> { [         percent,        grave,          U2030,        seconds ] }; // % ` ‰ ″

    // Second row
    key <AD01> { [               b,            B,            bar,      brokenbar ] }; // b B | ¦
    key <AD02> { [          eacute,       Eacute,     dead_acute, dead_doubleacute ] }; // é É ˊ ˝
    key <AD03> { [               p,            P,      ampersand,        section ] }; // p P & §
    key <AD04> { [               o,            O,             oe,             OE ] }; // o O œ Œ
    key <AD05> { [          egrave,       Egrave,     dead_grave,          grave ] }; // è È ` `
    key <AD06> { [ dead_circumflex,       exclam,     exclamdown                 ] }; // ^ ! ¡
    key <AD07> { [               v,            V,     dead_caron                 ] }; // v V ˇ
    key <AD08> { [               d,            D,            eth,            ETH ] }; // d D ð Ð
    key <AD09> { [               l,            L,    dead_stroke                 ] }; // l L /
    key <AD10> { [               j,            J,          U0133,          U0132 ] }; // j J ĳ Ĳ
    key <AD11> { [               z,            Z,          schwa,          SCHWA ] }; // z Z ə Ə
    key <AD12> { [               w,            W,     dead_breve                 ] }; // w W ̆

    // Third row
    key <AC01> { [               a,            A,             ae,             AE ] }; // a A æ Æ
    key <AC02> { [               u,            U,         ugrave,         Ugrave ] }; // u U ù Ù
    key <AC03> { [               i,            I, dead_diaeresis,  dead_abovedot ] }; // i I ̈ ˙
    key <AC04> { [               e,            E,       EuroSign,  dead_currency ] }; // e E € ¤
    key <AC05> { [           comma,    semicolon, rightsinglequotemark, dead_horn ] }; // , ; ’ ̛
    key <AC06> { [               c,            C,      copyright,          U017F ] }; // c C © ſ
    key <AC07> { [               t,            T,          thorn,          THORN ] }; // t T þ Þ
    key <AC08> { [               s,            S,         ssharp,          U1E9E ] }; // s S ß ẞ
    key <AC09> { [               r,            R,     registered,      trademark ] }; // r R ® ™
    key <AC10> { [               n,            N,     dead_tilde                 ] }; // n N ~
    key <AC11> { [               m,            M,    dead_macron,      masculine ] }; // m M ̄ º
    key <BKSL> { [        ccedilla,     Ccedilla,   dead_cedilla, dead_belowcomma ] }; // ç Ç ¸ ,

    // Fourth row
    key <LSGT> { [     ecircumflex,  Ecircumflex,          slash                 ] }; // ê Ê /
    key <AB01> { [          agrave,       Agrave,      backslash                 ] }; // à À \
    key <AB02> { [               y,            Y,      braceleft, leftsinglequotemark  ] }; // y Y { ‘
    key <AB03> { [               x,            X,     braceright, rightsinglequotemark ] }; // x X } ’
    key <AB04> { [          period,        colon,       ellipsis, periodcentered ] }; // . : … ·
    key <AB05> { [               k,            K,     asciitilde                 ] }; // k K ~
    key <AB06> { [      apostrophe,     question,   questiondown,      dead_hook ] }; // ' ? ¿ ̉
    key <AB07> { [               q,            Q, dead_abovering,  dead_belowdot ] }; // q Q ˚ ̣
    key <AB08> { [               g,            G,     dead_greek                 ] }; // g G µ
    key <AB09> { [               h,            H,         dagger,   doubledagger ] }; // h H † ‡
    key <AB10> { [               f,            F,    dead_ogonek,    ordfeminine ] }; // f F ̨ ª

    key <SPCE> { [           space, nobreakspace,     underscore,          U202F ] }; // ␣ (espace insécable) _ (espace insécable fin)
};

partial alphanumeric_keys
xkb_symbols "bepo_latin9" {

    // Restricts the fr(bepo) layout to latin9 symbols

    include "fr(bepo)"
    include "keypad(oss_latin9)"

    name[Group1]="French (Bepo, ergonomic, Dvorak way, Latin-9 only)";

    key <TLDE> { [          dollar,   numbersign,        dollar,       paragraph ] }; // $ # $ ¶

    key <AE01> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [        quotedbl,            1                                 ] }; // " 1
    key <AE02> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [   guillemotleft,            2,           less                 ] }; // « 2 <
    key <AE03> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [  guillemotright,            3,        greater                 ] }; // » 3 >
    key <AE04> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [       parenleft,            4,    bracketleft                 ] }; // ( 4 [
    key <AE05> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [      parenright,            5,   bracketright                 ] }; // ) 5 ]
    key <AE08> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [           minus,            8,          minus,     onequarter ] }; // - 8 - ¼
    key <AE11> { [           equal,       degree                                 ] }; // = °
    key <AE12> { [         percent,        grave                                 ] }; // % `

    key <AD01> { [               b,            B,            bar                 ] }; // b B |
    key <AD02> { [          eacute,       Eacute,     dead_acute                 ] }; // é É ˊ
    key <AD10> { [               j,            J                                 ] }; // j J
    key <AD11> { [               z,            Z                                 ] }; // z Z
    key <AD12> { [               w,            W                                 ] }; // w W

    key <AC03> { [               i,            I, dead_diaeresis                 ] }; // i I ̈
    key <AC05> { [           comma,    semicolon,          comma,      dead_horn ] }; // , ; , ̛
    key <AC06> { [               c,            C,      copyright                 ] }; // c C ©
    key <AC08> { [               s,            S,         ssharp                 ] }; // s S ß
    key <AC09> { [               r,            R,     registered                 ] }; // r R ®
    key <AC11> { [               m,            M,         macron,      masculine ] }; // m M ̄ º

    key <AB02> { [               y,            Y,      braceleft                 ] }; // y Y {
    key <AB03> { [               x,            X,     braceright                 ] }; // x X }
    key <AB04> { [          period,        colon                                 ] }; // . :
    key <AB09> { [               h,            H                                 ] }; // h H
    key <AB10> { [               f,            F,              f,    ordfeminine ] }; // f F   ª

    // Note : on a besoin de redéfinir les niveaux 3 et 4,
    // donc nbsp(level2) ne suffit pas !
    key <SPCE> { [           space,  nobreakspace,    underscore,   nobreakspace ] }; // ␣ (espace insécable) _ (espace insécable)
};

// Author   : Francis Leboutte, http://www.algo.be/ergo/dvorak-fr.html
//            thanks to Fabien Cazenave for his help
// Licence  : X11
// Version  : 0.3

// Base layer + dead AltGr key (`):
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━━┓
// │ *   │ 1   │ 2   │ 3   │ 4   │ 5   │ 6   │ 7   │ 8   │ 9   │ 0   │ +   │ %   ┃          ┃
// │ _   │ =   │ / ± │ - ¼ │ è ½ │ \ ¾ │ ^   │ (   │ ` ` │ )   │ "   │ [   │ ]   ┃ ⌫        ┃
// ┢━━━━━┷━━┱──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┺━━┳━━━━━━━┫
// ┃        ┃ ? Æ │ <   │ >   │ G   │ !   │ H   │ V   │ C Ç │ M   │ K   │ Z   │ &   ┃       ┃
// ┃ ↹      ┃ : æ │ ' $ │ é É │ g € │ . ° │ h   │ v   │ c ç │ m µ │ k   │ z   │ ¨   ┃       ┃
// ┣━━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓  ⏎   ┃
// ┃         ┃ O Ò │ A À │ U Ù │ E È │ B   │ F   │ S   │ T   │ N   │ D   │ W   │ #   ┃      ┃
// ┃ ⇬       ┃ o ò │ a à │ u ù │ e è │ b   │ f   │ s « │ t   │ n » │ d   │ w   │ ~   ┃      ┃
// ┣━━━━━━┳━━┹──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┲━━┷━━━━━┻━━━━━━┫
// ┃      ┃ ç Ç │ | Œ │ Q   │ @   │ I Ì │ Y   │ X   │ R   │ L   │ P   │ J   ┃               ┃
// ┃ ⇧    ┃ à À │ ; œ │ q { │ , } │ i ì │ y £ │ x   │ r º │ l   │ p § │ j   ┃ ⇧             ┃
// ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴─┲━━━┷━━━┳━┷━━━━━╋━━━━━━━┳━━━━━━━┫
// ┃       ┃       ┃       ┃ ␣                            ⍽ ┃       ┃       ┃       ┃       ┃
// ┃ ctrl  ┃ super ┃ alt   ┃ ␣ Espace    Espace insécable ⍽ ┃ alt   ┃ super ┃ menu  ┃ ctrl  ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┻━━━━━━━┛

// Notice the specific Caps_Lock layer:
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━━┓
// │ *   │ 1   │ 2   │ 3   │ 4   │ 5   │ 6   │ 7   │ 8   │ 9   │ 0   │ +   │ %   ┃          ┃
// │     │     │     │     │     │     │     │     │     │     │     │     │     ┃ ⌫        ┃
// ┢━━━━━┷━━┱──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┺━━┳━━━━━━━┫
// ┃        ┃     │ <   │ >   │     │     │     │     │     │     │     │     │     ┃       ┃
// ┃ ↹      ┃     │     │     │     │     │     │     │     │     │     │     │     ┃       ┃
// ┣━━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓  ⏎   ┃
// ┃         ┃     │     │     │     │     │     │     │     │     │     │     │     ┃      ┃
// ┃ ⇬       ┃     │     │     │     │     │     │     │     │     │     │     │     ┃      ┃
// ┣━━━━━━┳━━┹──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┬──┴──┲━━┷━━━━━┻━━━━━━┫
// ┃      ┃ /   │ -   │     │     │     │     │     │     │     │     │     ┃               ┃
// ┃ ⇧    ┃     │     │     │     │     │     │     │     │     │     │     ┃ ⇧             ┃
// ┣━━━━━━┻┳━━━━┷━━┳━━┷━━━━┱┴─────┴─────┴─────┴─────┴─────┴─┲━━━┷━━━┳━┷━━━━━╋━━━━━━━┳━━━━━━━┫
// ┃       ┃       ┃       ┃ ␣                            ⍽ ┃       ┃       ┃       ┃       ┃
// ┃ ctrl  ┃ super ┃ alt   ┃ ␣ Espace    Espace insécable ⍽ ┃ alt   ┃ super ┃ menu  ┃ ctrl  ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┻━━━━━━━┛

partial alphanumeric_keys modifier_keys
xkb_symbols "dvorak" {
  name[Group1]="French (Dvorak)";

  // First row
  key <TLDE> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [       underscore,   asterisk                  ] };
  key <AE01> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [            equal,          1                  ] };
  key <AE02> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [            slash,          2,       plusminus ] };
  key <AE03> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [            minus,          3,      onequarter ] };
  key <AE04> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [           egrave,          4,         onehalf ] };
  key <AE05> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [        backslash,          5,   threequarters ] };
  key <AE06> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [  dead_circumflex,          6                  ] };
  key <AE07> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [        parenleft,          7                  ] };
  key <AE08> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [ ISO_Level3_Latch,          8,           grave ] };
  key <AE09> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [       parenright,          9                  ] };
  key <AE10> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [         quotedbl,          0                  ] };
  key <AE11> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [      bracketleft,       plus                  ] };
  key <AE12> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [     bracketright,    percent                  ] };

  // Second row
  key <AD01> { [            colon,         question,              ae,               AE ] };
  key <AD02> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [       apostrophe,       less,          dollar ] };
  key <AD03> { type[group1] = "FOUR_LEVEL_SEMIALPHABETIC", [           eacute,    greater,          Eacute ] };
  key <AD04> { [                g,                G,        EuroSign                   ] };
  key <AD05> { [           period,           exclam,          degree                   ] };
  key <AD06> { [                h,                H                                    ] };
  key <AD07> { [                v,                V                                    ] };
  key <AD08> { [                c,                C,        ccedilla,         Ccedilla ] };
  key <AD09> { [                m,                M,              mu                   ] };
  key <AD10> { [                k,                K                                    ] };
  key <AD11> { [                z,                Z                                    ] };
  key <AD12> { [   dead_diaeresis,        ampersand                                    ] };

  // Third row
  key <AC01> { [                o,                O,          ograve,           Ograve ] };
  key <AC02> { [                a,                A,          agrave,           Agrave ] };
  key <AC03> { [                u,                U,          ugrave,           Ugrave ] };
  key <AC04> { [                e,                E,          egrave,           Egrave ] };
  key <AC05> { [                b,                B                                    ] };
  key <AC06> { [                f,                F                                    ] };
  key <AC07> { [                s,                S,   guillemotleft                   ] };
  key <AC08> { [                t,                T                                    ] };
  key <AC09> { [                n,                N,  guillemotright                   ] };
  key <AC10> { [                d,                D                                    ] };
  key <AC11> { [                w,                W                                    ] };
  key <BKSL> { [       asciitilde,       numbersign                                    ] };

  // Fourth row
  key <LSGT> { type[group1] = "FOUR_LEVEL_PLUS_LOCK", [       agrave, ccedilla,  Agrave, Ccedilla,   slash ] };
  key <AB01> { type[group1] = "FOUR_LEVEL_PLUS_LOCK", [    semicolon,      bar,      oe,       OE,   minus ] };
  key <AB02> { [                q,                Q,       braceleft                   ] };
  key <AB03> { [            comma,               at,      braceright                   ] };
  key <AB04> { [                i,                I,          igrave,           Igrave ] };
  key <AB05> { [                y,                Y,        sterling                   ] };
  key <AB06> { [                x,                X                                    ] };
  key <AB07> { [                r,                R,       masculine                   ] };
  key <AB08> { [                l,                L                                    ] };
  key <AB09> { [                p,                P,         section                   ] };
  key <AB10> { [                j,                J                                    ] };

  key <SPCE> { [            space,            space,    nobreakspace,     nobreakspace ] };
};

// C'WHERTY: Breton keyboard. Ar c'hlavier brezhoneg.
// Copyright © 2009 Dominique Pellé <dominique.pelle@gmail.com>
// Version: 0.1
//
// ┌─────┐
// │ S A │   S = Reol = Shift,  A = ArErl + Pennlizherenn = AltGr + Shift
// │ s a │   s = normal,        a = ArErl = AltGr
// └─────┘
//
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
// │ $ Γ │ 1 Δ │ 2 Θ │ 3 Λ │ 4 Ξ │ 5 Π │ 6 Σ │ 7 Φ │ 8 Ψ │ 9 Ç │ 0 Ω │ ° ß │ + ¬ ┃ ⌫ Souzañ┃
// │ ² ˙ │ & ¯ │ é ´ │ " # │ ' { │ ( [ │ - | │ è ` │ - \ │ ç ± │ à @ │ ) ] │ = } ┃         ┃
// ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
// ┃Toalenn┃ C'h │ W ω │ E ε │ R ρ │ T τ │ Y ψ │ U υ │ I ι │ O OE│ P π │ ¨ ¥ │ * £ ┃Enankañ┃
// ┃     ↹ ┃ c'h │ w   │ e € │ r   │ t   │ y   │ u   │ i ı │ o oe│ p   │ ^ « │ / » ┃   ⏎   ┃
// ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
// ┃Prenn   ┃ A Æ │ S σ │ D δ │ F φ │ G γ │ H η │ J ς │ K κ │ L λ │ M μ │ Ù ® │ ! ¡ ┃      ┃
// ┃Pennli ⇬┃ a æ │ s   │ d $ │ f   │ g   │ h   │ j   │ k   │ l   │ m   │ ù ŭ │ ? ¿ ┃      ┃
// ┣━━━━━━━┳┹────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┲┷━━━━━┻━━━━━━┫
// ┃       ┃ Q θ │ Z ζ │ X ξ │ C χ │ V   │ B β │ N ν │ CH  │ Ñ   │ : © │ ;   ┃             ┃
// ┃Shift ⇧┃ q < │ z > │ x   │ c ¢ │ v   │ b   │ n   │ ch  │ ñ   │ .   │ ,   ┃Shift ⇧      ┃
// ┣━━━━━━━╋━━━━━┷━┳━━━┷━━━┱─┴─────┴─────┴─────┴─────┴─────┴───┲━┷━━━━━╈━━━━━┻━┳━━━━━━━┳━━━┛
// ┃       ┃       ┃       ┃ ⍽ Espace insécable              ␣ ┃       ┃       ┃       ┃
// ┃Reol   ┃Meta   ┃Erl    ┃ ␣ Espace                        ␣ ┃ArErl ⇮┃Menu   ┃Reol   ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┛
partial alphanumeric_keys
xkb_symbols "bre" {

    include "keypad(oss)"

    name[Group1]= "French (Breton)";

    // First row
    key <TLDE> { [     twosuperior,     dead_tilde,   dead_abovedot,    Greek_GAMMA ] };
    key <AE01> { [       ampersand,              1,     dead_macron,    Greek_DELTA ] };
    key <AE02> { [          eacute,              2,      dead_acute,    Greek_THETA ] };
    key <AE03> { [        quotedbl,              3,      numbersign,    Greek_LAMDA ] };
    key <AE04> { [      apostrophe,              4,       braceleft,       Greek_XI ] };
    key <AE05> { [       parenleft,              5,     bracketleft,       Greek_PI ] };
    key <AE06> { [           minus,              6,             bar,    Greek_SIGMA ] };
    key <AE07> { [          egrave,              7,      dead_grave,      Greek_PHI ] };
    key <AE08> { [      underscore,              8,       backslash,      Greek_PSI ] };
    key <AE09> { [        ccedilla,              9,       plusminus,       Ccedilla ] };
    key <AE10> { [          agrave,              0,              at,    Greek_OMEGA ] };
    key <AE11> { [      parenright, dead_abovering,    bracketright,         ssharp ] };
    key <AE12> { [           equal,           plus,      braceright,        notsign ] };

    // Second row
    // Handling the C'H key correctly requires an inputmethod (XIM)
    // See https://bugs.freedesktop.org/show_bug.cgi?id=19506
 // key <AD01> { [    trigraph_c_h,   trigraph_C_h,    trigraph_C_H,    Greek_alpha ] };
    key <AD01> { [           UF8FD,          UF8FE,           UF8FF,    Greek_alpha ] };
    key <AD02> { [               w,              W,     Greek_omega,    Greek_omega ] };
    key <AD03> { [               e,              E,        EuroSign,  Greek_epsilon ] };
    key <AD04> { [               r,              R,       Greek_rho,      Greek_rho ] };
    key <AD05> { [               t,              T,       Greek_tau,      Greek_tau ] };
    key <AD06> { [               y,              Y,       Greek_psi,      Greek_psi ] };
    key <AD07> { [               u,              U,   Greek_upsilon,  Greek_upsilon ] };
    key <AD08> { [               i,              I,        idotless,     Greek_iota ] };
    key <AD09> { [               o,              O,              oe,             OE ] };
    key <AD10> { [               p,              P,        Greek_pi,       Greek_pi ] };
    key <AD11> { [ dead_circumflex, dead_diaeresis,   guillemotleft,            yen ] };
    key <AD12> { [           slash,       asterisk,  guillemotright,       sterling ] };

    // Third row
    key <AC01> { [               a,              A,              ae,             AE ] };
    key <AC02> { [               s,              S,     Greek_sigma,    Greek_sigma ] };
    key <AC03> { [               d,              D,          dollar,    Greek_delta ] };
    key <AC04> { [               f,              F,       Greek_phi,      Greek_phi ] };
    key <AC05> { [               g,              G,     Greek_gamma,    Greek_gamma ] };
    key <AC06> { [               h,              H,       Greek_eta,      Greek_eta ] };
    key <AC07> { [               j,              J, Greek_finalsmallsigma, Greek_finalsmallsigma ] };
    key <AC08> { [               k,              K,       Greek_kappa,  Greek_kappa ] };
    key <AC09> { [               l,              L,       Greek_lamda, Greek_lambda ] };
    key <AC10> { [               m,              M,          Greek_mu,     Greek_mu ] };
    key <AC11> { [          ugrave,         Ugrave,            ubreve,   registered ] };
    key <BKSL> { [        question,         exclam,      questiondown,   exclamdown ] };

    // Fourth row
    key <LSGT> { [               q,              Q,            less,    Greek_theta ] };
    key <AB01> { [               z,              Z,         greater,     Greek_zeta ] };
    key <AB02> { [               x,              X,        Greek_xi,       Greek_xi ] };
    key <AB03> { [               c,              C,            cent,      Greek_chi ] };
    key <AB04> { [               v,              V                                  ] };
    key <AB05> { [               b,              B,      Greek_beta,     Greek_beta ] };
    key <AB06> { [               n,              N,        Greek_nu,       Greek_nu ] };
    // Handling the CH key correctly requires an inputmethod (XIM)
    // See https://bugs.freedesktop.org/show_bug.cgi?id=19506
 // key <AB07> { [      digraph_ch,     digraph_Ch,      digraph_CH,  Greek_omicron ] };
    key <AB07> { [           UF8FA,          UF8FB,           UF8FC,  Greek_omicron ] };
    key <AB08> { [          ntilde,         Ntilde                                  ] };
    key <AB09> { [          period,          colon,         section,      copyright ] };
    key <AB10> { [           comma,      semicolon,         percent                 ] };

    key <SPCE> { [           space,   nobreakspace,           space,   nobreakspace ] };

    include "level3(ralt_switch)"
};

// Occitan layout
// Author : 2009 Thomas Metz <tmetz @ free.fr>
// Derived from the layout defined at http://www.panoccitan.org
// Version: 0.1
// Differences from OSS French keyboard :
// - add á, í, ò, ó et ú, Á, Í, Ò, Ó, Ú, ñ, Ñ
// - change position of æ, ü, î, û, œ, ô, ö, ï, â, ë
//
// ┌─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┬─────┲━━━━━━━━━┓
// │ ³ ¸ │ 1 ̨  │ 2 É │ 3 ˘ │ 4 — │ 5 – │ 6 ‑ │ 7 È │ 8 ™ │ 9 Ç │ 0 À │ ° ≠ │ + ± ┃ ⌫ Retour┃
// │ ² ¹ │ & ˇ │ é ~ │ " # │ ' { │ ( [ │ - | │ è ` │ _ \ │ ç ^ │ à @ │ ) ] │ = } ┃  arrière┃
// ┢━━━━━┷━┱───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┴─┬───┺━┳━━━━━━━┫
// ┃       ┃ A Á │ Z Æ │ E ¢ │ R Ê │ T Ë │ Y Û │ U Ú │ I Í │ O Ó │ P Ò │ ¨ Œ │ £ Ø ┃Entrée ┃
// ┃Tab ↹  ┃ a á │ z æ │ e € │ r ê │ t ë │ y û │ u ú │ i í │ o ó │ p ò │ ^ œ │ $ ø ┃   ⏎   ┃
// ┣━━━━━━━┻┱────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┴┬────┺┓      ┃
// ┃        ┃ Q Ä │ S „ │ D Â │ F ‚ │ G ¥ │ H Ü │ J Î │ K Ï │ L Ô │ M Ö │ % Ù │ µ ̄  ┃      ┃
// ┃Maj ⇬   ┃ q ä │ s ß │ d â │ f ‘ │ g ’ │ h ü │ j î │ k ï │ l ô │ m ö │ ù ' │ * ` ┃      ┃
// ┣━━━━━━━┳┹────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┬┴────┲┷━━━━━┻━━━━━━┫
// ┃       ┃ > ≥ │ W “ │ X ” │ C ® │ V ← │ B ↑ │ N Ñ │ ? … │ . . │ / ∕ │ § − ┃             ┃
// ┃Shift ⇧┃ < ≤ │ w « │ x » │ c © │ v → │ b ↓ │ n ñ │ , ¿ │ ; × │ : ÷ │ ! ¡ ┃Shift ⇧      ┃
// ┣━━━━━━━╋━━━━━┷━┳━━━┷━━━┱─┴─────┴─────┴─────┴─────┴─────┴───┲━┷━━━━━╈━━━━━┻━┳━━━━━━━┳━━━┛
// ┃       ┃       ┃       ┃ ␣         Espace fine insécable ⍽ ┃       ┃       ┃       ┃
// ┃Ctrl   ┃Meta   ┃Alt    ┃ ␣ Espace       Espace insécable ⍽ ┃AltGr ⇮┃Menu   ┃Ctrl   ┃
// ┗━━━━━━━┻━━━━━━━┻━━━━━━━┹───────────────────────────────────┺━━━━━━━┻━━━━━━━┻━━━━━━━┛
partial alphanumeric_keys
xkb_symbols "oci" {

    include "fr(oss)"

    name[Group1]= "Occitan";

    key <AD01>	{ [                a,                A,               aacute,                Aacute ] }; // a A á Á
    key <AD02>	{ [                z,                Z,                   ae,                    AE ] }; // z Z æ Æ
    key <AD05>	{ [                t,                T,           ediaeresis,            Ediaeresis ] }; // t T ë Ë
    key <AD06>	{ [                y,                Y,          ucircumflex,           Ucircumflex ] }; // y Y û Û
    key <AD07>	{ [                u,                U,               uacute,                Uacute ] }; // u U ú Ú
    key <AD08>	{ [                i,                I,               iacute,                Iacute ] }; // i I í Í
    key <AD09>	{ [                o,                O,               oacute,                Oacute ] }; // o O ó Ó
    key <AD10>	{ [                p,                P,               ograve,                Ograve ] }; // p P ò Ò
    key <AD11>	{ [  dead_circumflex,   dead_diaeresis,                   oe,                    OE ] }; // ^ ̈ ̃ œ Œ

    key <AC03>	{ [                d,                D,          acircumflex,           Acircumflex ] }; // d D â Â
    key <AC06>	{ [                h,                H,           udiaeresis,            Udiaeresis ] }; // h H ü Ü
    key <AC07>	{ [                j,                J,          icircumflex,           Icircumflex ] }; // j J î Î
    key <AC08>	{ [                k,                K,           idiaeresis,            Idiaeresis ] }; // k K ï Ï
    key <AC09>	{ [                l,                L,          ocircumflex,           Ocircumflex ] }; // l L ô Ô

    key <AB04>  { [                v,                V,           rightarrow,             leftarrow ] }; // v V → ←
    key <AB06>  { [                n,                N,               ntilde,                Ntilde ] }; // n N ñ Ñ
};

// Marc.Shapiro@inria.fr 19-sep-1998
// modifications : Etienne Herlent <eherlent@linux-france.org> june 2000
// adapted to the new input layer :
//        Martin Costabel <costabel@wanadoo.fr> 3-jan-2001
// adapted for Latin9 alphabet (ISO-8859-15):
//        Etienne Herlent <eherlent@linux-france.org> march 2005

// This map is an almost-complete mapping of the standard French
// MacIntosh keyboard under Xwindows.  I tried to remain as faithful
// as possible to the Mac meaning of each key.	I did this entirely by
// hand and by intuition, relying on the Clavier (Keyboard?) Desktop
// Accessory for the Mac meaning of keys, and on reading keysymdef.h
// to intuit the corresponding X names.	 Lacking proper documentation,
// I may have made some mistakes.

// Entries marked CHECK are particularly uncertain

// Entries marked MISSING mark Mac characters for which I was unable
// to find a corresponding keysym.  (Some for sure don't: e.g. the
// Apple mark and the oe/OE character; others I may have simply not
// found.)

// Copied from macintosh_vndr/fr
partial alphanumeric_keys
xkb_symbols "mac" {

    name[Group1]= "French (Macintosh)";

    key <TLDE> {	[          at, numbersign, periodcentered,  Ydiaeresis	]	}; // MISSING: Ydiaeresis; eherlent : ok in Latin9
    key <AE01> {	[   ampersand,    1,   VoidSymbol,    dead_acute	]	}; // MISSING: Apple
    key <AE02> {	[      eacute,    2,   ediaeresis,        Eacute	]	};
    key <AE03> {	[    quotedbl,    3,   VoidSymbol,    VoidSymbol	] 	}; // CHECK all quotemarks
    key <AE04> {	[  apostrophe,    4,   VoidSymbol,    VoidSymbol	] 	};
    key <AE05> {	[   parenleft,    5,    braceleft,   bracketleft	]	};
 // CHECK section
    key <AE06> {	[     section,    6,    paragraph,         aring	]	};
    key <AE07> {	[      egrave,    7, guillemotleft, guillemotright	]	};
    key <AE08> {	[      exclam,    8,   exclamdown,   Ucircumflex	]	};
    key <AE09> {	[    ccedilla,    9,     Ccedilla,        Aacute	]	};
    key <AE10> {	[      agrave,    0,       oslash,    VoidSymbol	]	}; // MISSING: Oslash
    key <AE11> {	[  parenright, degree, braceright,  bracketright	]	};
    key <AE12> {	[       minus, underscore, emdash,        endash	]	}; // CHECK dashes

    key <AD01> {	[           a,  A,           ae,          AE	]	};
    key <AD02> {	[           z,  Z,  Acircumflex,       Aring	]	};
    key <AD03> {	[           e,  E,  ecircumflex, Ecircumflex	]	};
    key <AD04> {	[           r,  R,   registered,    currency	]	};
    key <AD05> {	[           t,  T,   VoidSymbol,  VoidSymbol	]	};
    key <AD06> {	[           y,  Y,       Uacute,  Ydiaeresis	]	}; // MISSING: Ydiaeresis; eherlent : ok in Latin9
    key <AD07> {	[           u,  U,   VoidSymbol, ordfeminine	]	}; // MISSING: ordmasculine?
    key <AD08> {	[           i,  I,  icircumflex,  idiaeresis	]	};
    key <AD09> {	[           o,  O,           oe,          OE	]	}; // MISSING: oe, OE lacking in Latin1; eherlent ok in Latin9
    key <AD10> {	[           p,  P,   VoidSymbol,  VoidSymbol	]	};
    key <AD11> {	[dead_circumflex,dead_diaeresis, ocircumflex, Ocircumflex	]	};
    key <AD12> {	[      dollar, asterisk,   EuroSign, yen	]	}; // eherlent : EuroSign in Latin9

    key <AC01> {	[         q, Q, acircumflex,         Agrave	]	};
    key <AC02> {	[         s, S,      Ograve,     VoidSymbol	]	};
    key <AC03> {	[         d, D,  VoidSymbol,     VoidSymbol	]	};
    key <AC04> {	[         f, F,  VoidSymbol, periodcentered	]	}; // MISSING: oblong script f??
    key <AC05> {	[         g, G,  VoidSymbol,     VoidSymbol	]	}; // MISSING: kerned fi, fl
    key <AC06> {	[         h, H,      Igrave,    Icircumflex	]	};
    key <AC07> {	[         j, J,  Idiaeresis,         Iacute	]	};
    key <AC08> {	[         k, K,      Egrave,     Ediaeresis	]	};
    key <AC09> {	[         l, L,     notsign,            bar	]	};
    key <AC10> {	[         m, M,          mu,         Oacute	]	};
    key <AC11> {	[    ugrave,percent, Ugrave,    ucircumflex	]	}; // MISSING: per-mille
    key <BKSL> {	[ dead_grave, sterling,  at,     numbersign	]	};

    key <LSGT> {	[      less, greater, VoidSymbol, VoidSymbol	]	};
    key <AB01> {	[         w, W, VoidSymbol,   VoidSymbol	]	}; // MISSING: half-guillemot (single angle bracket)
    key <AB02> {	[         x, X, VoidSymbol,   VoidSymbol	]	}; // CHECK similarequal; MISSING: extra-slanted slash
    key <AB03> {	[         c, C,  copyright,         cent	]	};
    key <AB04> {	[         v, V,    diamond,  leftradical	]	}; // CHECK diamond, leftradical
    key <AB05> {	[         b, B,     ssharp,   VoidSymbol	]	}; // CHECK: Greek_beta or ssharp?; MISSING: oblong script s
    key <AB06> {	[         n, N,  dead_tilde,  asciitilde	]	};
    key <AB07> {	[     comma,  question, VoidSymbol,  questiondown	]	};
    key <AB08> {	[ semicolon,  period, VoidSymbol,  periodcentered	]	};
    key <AB09> {	[     colon,  slash,   division,        backslash	]	};
    key <AB10> {	[     equal,   plus, VoidSymbol,        plusminus	]	};

    key <SPCE> {	[     space,  space, nobreakspace,   nobreakspace	]	};

    key <KPDL> {	[  comma,KP_Decimal	]	};

    include "level3(ralt_switch)"
};

partial alphanumeric_keys
xkb_symbols "geo" {
    include "ge(basic)"

    name[Group1]= "Georgian (France, AZERTY Tskapo)";

    key <TLDE> { [ exclam, noSymbol ] };
    key <AE01> { [ 0x0100201e, 1 ] };
    key <AE02> { [ 0x01002116, 2 ] };
    key <AE03> { [ percent, 3    ] };
    key <AE04> { [ parenleft, 4  ] };
    key <AE05> { [ colon, 5      ] };
    key <AE06> { [ semicolon, 6  ] };
    key <AE07> { [ question, 7   ] };
    key <AE08> { [ 0x01002116, 8 ] };
    key <AE09> { [ degree, 9     ] };
    key <AE10> { [ parenright, 0 ] };
    key <AE11> { [ minus, underscore, 0x01002014 ] };
    key <AE12> { [ less, greater ] };

    key <AD01> { [ 0x010010d0,  0x010010fa     ] };
    key <AD02> { [ 0x010010d6,  Z              ] };
    key <AD03> { [ 0x010010d4,  E, 0x010010f1  ] };
    key <AD04> { [ 0x010010e0,  0x010000ae     ] };
    key <AD05> { [ 0x010010e2,  T              ] };
    key <AD06> { [ 0x010010e7,  0x010010f8     ] };
    key <AD07> { [ 0x010010e3,  U              ] };
    key <AD08> { [ 0x010010d8,  0x010010f2     ] };
    key <AD09> { [ 0x010010dd,  O              ] };
    key <AD10> { [ 0x010010de,  P              ] };
    key <AD11> { [ 0x010010d7,  T              ] };
    key <AD12> { [ 0x010010eb,  Z              ] };

    key <AC01> { [ 0x010010e5,  Q              ] };
    key <AC02> { [ 0x010010e1,  S              ] };
    key <AC03> { [ 0x010010d3,  D              ] };
    key <AC04> { [ 0x010010e4,  0x010010f6     ] };
    key <AC05> { [ 0x010010d2,  0x010010f9     ] };
    key <AC06> { [ 0x010010f0,  0x010010f5     ] };
    key <AC07> { [ 0x010010ef,  0x010010f7     ] };
    key <AC08> { [ 0x010010d9,  K              ] };
    key <AC09> { [ 0x010010da,  L              ] };
    key <AC10> { [ 0x010010db,  M              ] };
    key <AC11> { [ 0x010010df,  J              ] };
    key <BKSL> { [ 0x010010e9,  0x010000a9     ] };

    key <LSGT> { [ guillemotleft,guillemotright ] };
    key <AB01> { [ 0x010010ec,  W               ] };
    key <AB02> { [ 0x010010ee,  0x010010f4      ] };
    key <AB03> { [ 0x010010ea,  0x010000a9      ] };
    key <AB04> { [ 0x010010d5,  0x010010f3      ] };
    key <AB05> { [ 0x010010d1,  B               ] };
    key <AB06> { [ 0x010010dc,  0x010010fc      ] };
    key <AB07> { [ comma,       0x01002014      ] };
    key <AB08> { [ 0x010010e8,  S               ] };
    key <AB09> { [ 0x010010e6,  noSymbol        ] };
    key <AB10> { [ 0x010010ed,  noSymbol        ] };

};

// EXTRAS:

partial alphanumeric_keys
	xkb_symbols "sun_type6" {
	include "sun_vndr/fr(sun_type6)"
};
