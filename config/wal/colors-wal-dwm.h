static const char norm_fg[] = "#b3dcca";
static const char norm_bg[] = "#0a0c0f";
static const char norm_border[] = "#7d9a8d";

static const char sel_fg[] = "#b3dcca";
static const char sel_bg[] = "#843E45";
static const char sel_border[] = "#b3dcca";

static const char urg_fg[] = "#b3dcca";
static const char urg_bg[] = "#545861";
static const char urg_border[] = "#545861";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
