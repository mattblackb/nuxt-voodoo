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
h4 {
  color: #f06d2f;
  font-weight: bold;
  font-size: 24px;
  margin-top: 10px;
}
a {
  font-weight: bold;
  color: #f06d2f !important;
}
.orange a {
  font-weight: bold;
  color: white !important;
}
h1 {
  font-size: 80px;
}
h2 {
  font-size: 60px;
}
.v-application .orange {
  background-color: #f06d2f !important;
  color: black !important;
}
.v-application .orange a {
  color: black !important;
}
.whiteText {
  color: white !important;
}
h2,
b {
  color: #f06d2f !important;
}
h1,
h2,
h3,
h4,
h5,
h6 {
  border: 0;
  font-style: inherit;
  outline: 0;
  vertical-align: baseline;
  clear: both;
  font-weight: 400;
  font-family: "Staatliches", display;

  box-sizing: border-box;
  padding: 0;
  margin: 0;
  color: var(--e-global-color-secondary);
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
.orange h2,
.orange h3,
.orange h4,
.orange p,
.orange ul li {
  color: white !important;
}
h3 {
  font-size: 36px;
}
</style>
