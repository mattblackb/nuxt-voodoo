<template>
  <v-app id="page-container">
    <div style="margin-bottom: 335px">
      <v-container>
        <NavBar />
      </v-container>
      <nuxt />
      <v-row>
        <v-col cols="12" class="text-center"> </v-col>
      </v-row>
      <v-container id="footer" class="mt-10">
        <Footer />
      </v-container>
    </div>
  </v-app>
</template>

<style>

  @import url('https://fonts.googleapis.com/css2?family=Staatliches&display=swap');

@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;900&display=swap");
h4 {
  color: #f06d2f;
  font-weight: bold;
  font-size: 24px;
  margin-top: 10px;
}
a {
  font-weight: bold;
  color: #f06d2f!important;
}
.orange a {
  font-weight: bold;
  color: white!important;
}
h1{     font-size: 40px;}
h1, h2, h3, h4, h5, h6 {
  -webkit-text-size-adjust: 100%;
    --ast-container-default-xlg-padding: 6.67em;
    --ast-container-default-lg-padding: 5.67em;
    --ast-container-default-slg-padding: 4.34em;
    --ast-container-default-md-padding: 3.34em;
    --ast-container-default-sm-padding: 6.67em;
    --ast-container-default-xs-padding: 2.4em;
    --ast-container-default-xxs-padding: 1.4em;
    --ast-code-block-background: #EEEEEE;
    --ast-comment-inputs-background: #FAFAFA;
    --ast-global-color-0: #ee6c4e;
    --ast-global-color-1: rgba(0,0,0,0.65);
    --ast-global-color-2: #000000;
    --ast-global-color-3: #f8f9f9;
    --ast-global-color-4: #ffffff;
    --ast-global-color-5: #FFFFFF;
    --ast-global-color-6: #4a4f5d;
    --ast-global-color-7: #2b2e37;
    --ast-global-color-8: #000000;
    --ast-border-color: #dddddd;
    --e-global-color-astglobalcolor0: #ee6c4e;
    --e-global-color-astglobalcolor1: rgba(0,0,0,0.65);
    --e-global-color-astglobalcolor2: #000000;
    --e-global-color-astglobalcolor3: #f8f9f9;
    --e-global-color-astglobalcolor4: #ffffff;
    --e-global-color-astglobalcolor5: #FFFFFF;
    --e-global-color-astglobalcolor6: #4a4f5d;
    --e-global-color-astglobalcolor7: #2b2e37;
    --e-global-color-astglobalcolor8: #000000;
    --wp--preset--font-size--normal: 16px;
    --wp--preset--font-size--huge: 42px;
    --page-title-display: block;
    --wp--preset--color--black: #000000;
    --wp--preset--color--cyan-bluish-gray: #abb8c3;
    --wp--preset--color--white: #ffffff;
    --wp--preset--color--pale-pink: #f78da7;
    --wp--preset--color--vivid-red: #cf2e2e;
    --wp--preset--color--luminous-vivid-orange: #ff6900;
    --wp--preset--color--luminous-vivid-amber: #fcb900;
    --wp--preset--color--light-green-cyan: #7bdcb5;
    --wp--preset--color--vivid-green-cyan: #00d084;
    --wp--preset--color--pale-cyan-blue: #8ed1fc;
    --wp--preset--color--vivid-cyan-blue: #0693e3;
    --wp--preset--color--vivid-purple: #9b51e0;
    --wp--preset--color--ast-global-color-0: var(--ast-global-color-0);
    --wp--preset--color--ast-global-color-1: var(--ast-global-color-1);
    --wp--preset--color--ast-global-color-2: var(--ast-global-color-2);
    --wp--preset--color--ast-global-color-3: var(--ast-global-color-3);
    --wp--preset--color--ast-global-color-4: var(--ast-global-color-4);
    --wp--preset--color--ast-global-color-5: var(--ast-global-color-5);
    --wp--preset--color--ast-global-color-6: var(--ast-global-color-6);
    --wp--preset--color--ast-global-color-7: var(--ast-global-color-7);
    --wp--preset--color--ast-global-color-8: var(--ast-global-color-8);
    --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);
    --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
    --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);
    --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);
    --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
    --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
    --wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
    --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
    --wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
    --wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
    --wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
    --wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
    --wp--preset--font-size--small: 13px;
    --wp--preset--font-size--medium: 20px;
    --wp--preset--font-size--large: 36px;
    --wp--preset--font-size--x-large: 42px;
    --wp--preset--spacing--20: 0.44rem;
    --wp--preset--spacing--30: 0.67rem;
    --wp--preset--spacing--40: 1rem;
    --wp--preset--spacing--50: 1.5rem;
    --wp--preset--spacing--60: 2.25rem;
    --wp--preset--spacing--70: 3.38rem;
    --wp--preset--spacing--80: 5.06rem;
    --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
    --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
    --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
    --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
    --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
    --wp--style--global--content-size: var(--wp--custom--ast-content-width-size);
    --wp--style--global--wide-size: var(--wp--custom--ast-wide-width-size);
    --wp--style--block-gap: 24px;
    -webkit-font-smoothing: antialiased;
    --e-global-color-primary: #2B2E37;
    --e-global-color-secondary: #FFFFFF;
    --e-global-color-text: #000000;
    --e-global-color-accent: #EE6C4E;
    --e-global-color-2a9f9ba: #F8F9F9;
    --e-global-color-d0f2230: #000000;
    --e-global-color-3d75a72: #FFFFFF;
    --e-global-color-cbfe29e: #FF6700;
    --e-global-typography-primary-font-family: "Roboto";
    --e-global-typography-primary-font-weight: 600;
    --e-global-typography-secondary-font-family: "Roboto Slab";
    --e-global-typography-secondary-font-weight: 400;
    --e-global-typography-text-font-family: "Roboto";
    --e-global-typography-text-font-weight: 400;
    --e-global-typography-accent-font-family: "Roboto";
    --e-global-typography-accent-font-weight: 500;
    --border-transition: 0.3s;
    --border-radius: 0;
    --border-block-start-width: 0px;
    --border-inline-end-width: 0px;
    --border-block-end-width: 0px;
    --border-inline-start-width: 0px;
    --border-style: initial;
    --border-color: initial;
    --container-widget-height: initial;
    --container-widget-flex-grow: 0;
    --container-widget-align-self: initial;
    --content-width: min(100%,var(--container-max-width,1140px));
    --width: 100%;
    --min-height: initial;
    --height: auto;
    --text-align: initial;
    --margin-block-start: 0;
    --margin-inline-end: 0;
    --margin-block-end: 0;
    --margin-inline-start: 0;
    --padding-block-start: var(--container-default-padding-block-start,10px);
    --padding-inline-end: var(--container-default-padding-inline-end,10px);
    --padding-block-end: var(--container-default-padding-block-end,10px);
    --padding-inline-start: var(--container-default-padding-inline-start,10px);
    --position: relative;
    --z-index: revert;
    --overflow: visible;
    --overlay-mix-blend-mode: initial;
    --overlay-opacity: 1;
    --overlay-transition: 0.3s;
    --e-con-grid-template-columns: repeat(3,1fr);
    --e-con-grid-template-rows: repeat(2,1fr);
    --bc-margin-block-start: var(--margin-top);
    --bc-margin-block-end: var(--margin-bottom);
    --bc-margin-inline-start: var(--margin-left);
    --bc-margin-inline-end: var(--margin-right);
    --bc-padding-block-start: var(--padding-top);
    --bc-padding-block-end: var(--padding-bottom);
    --bc-padding-inline-start: var(--padding-left);
    --bc-padding-inline-end: var(--padding-right);
    --container-max-width: 1024px;
    --container-widget-width: 100%;
    --display: flex;
    --background-transition: 0.3s;
    text-align: var(--text-align);
    --flex-direction: initial;
    --flex-wrap: initial;
    --justify-content: initial;
    --align-items: initial;
    --align-content: initial;
    --gap: initial;
    --flex-basis: initial;
    --flex-grow: initial;
    --flex-shrink: initial;
    --order: initial;
    --align-self: initial;
    --swiper-theme-color: #000;
    --swiper-navigation-size: 44px;
    --swiper-pagination-bullet-size: 6px;
    --swiper-pagination-bullet-horizontal-gap: 6px;
    --widgets-spacing: 20px 20px;
    border: 0;
    font-style: inherit;
    outline: 0;
    vertical-align: baseline;
    clear: both;
    font-weight: 400;
    font-family: 'Staatliches',display;

    box-sizing: border-box;
    padding: 0;
    margin: 0;
    color: var( --e-global-color-secondary );
    line-height: 68px;
}

.calendarDay {
  font-family: "Roboto", sans-serif;
  font-weight: 500;
  font-size: 1rem;
  color: #f06d2f;
}
.text-center a {
  color: white;
  font-weight: 500;
  font-size: 1rem;
}
#app {
  background-color: black;
  font-family: "Roboto", sans-serif;
}
body {
  background-color: #121212;
}

.header {
  background-color: darkgray;
  padding: 10% 10%;
  min-height: 20vh;
  background-image: url("/background.png");
  background-repeat: no-repeat;
  background-position: center;
  background-size: cover;
}
.header .col {
  min-width: 250px;
}
@media (max-width: 396px) {
  .header .col {
    min-width: 100% !important;
  }
}
.header img {
  max-width: 100%;
}
.headerText {
  color: white;
  text-transform: lowercase;
}
#page-container {
  position: relative;
  min-height: 100vh;
}

#content-wrap {
  padding-bottom: 2.5rem; /* Footer height */
}

#footer {
  position: absolute;
  bottom: 0;
  height: 14.5rem; /* Footer height */
  padding: 40px 0px;
  left: 50%;
  transform: translate(-50%, -50%);
}
.inline-block {
  display: inline-block;
  margin-right: 5px;
}
.joinnow {
  margin-right: 15px;
  background-color: coral;
  font-weight: bold !important;
}
img {
  max-width: 100%;
  height: auto;
}
 .orange  h2, .orange h3, .orange h4, .orange p, .orange ul li {
  color : white;
 }
</style>
