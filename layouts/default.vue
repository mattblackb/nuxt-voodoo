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
@import url("https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;900&display=swap");
h4 {
  color: #f06d2f;
  font-weight: bold;
  font-size: 24px;
  margin-top: 10px;
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
</style>
