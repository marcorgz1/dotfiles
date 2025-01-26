const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0a0c0f", /* black   */
  [1] = "#545861", /* red     */
  [2] = "#843E45", /* green   */
  [3] = "#9E555B", /* yellow  */
  [4] = "#DB5F65", /* blue    */
  [5] = "#838A7A", /* magenta */
  [6] = "#709E8E", /* cyan    */
  [7] = "#b3dcca", /* white   */

  /* 8 bright colors */
  [8]  = "#7d9a8d",  /* black   */
  [9]  = "#545861",  /* red     */
  [10] = "#843E45", /* green   */
  [11] = "#9E555B", /* yellow  */
  [12] = "#DB5F65", /* blue    */
  [13] = "#838A7A", /* magenta */
  [14] = "#709E8E", /* cyan    */
  [15] = "#b3dcca", /* white   */

  /* special colors */
  [256] = "#0a0c0f", /* background */
  [257] = "#b3dcca", /* foreground */
  [258] = "#b3dcca",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
