<template>
  <main>
    <v-app-bar dark flat>
      <v-app-bar-nav-icon
        @click.stop="drawer = !drawer"
        class="hidden-md-and-up"
      ></v-app-bar-nav-icon>
      <nuxt-link
        tag="img"
        :src="require('~/static/voodoo_logo.png')"
        to="/"
        class="mr-5 home hidden-sm-and-down"
        aria-label="Home Button"
      >
      </nuxt-link>
      <v-spacer></v-spacer>

      <v-toolbar-items class="hidden-sm-and-down">
        <v-btn to="/information" text>Information</v-btn>
        <v-btn to="/timetable" text>TimeTable</v-btn>
        <v-btn to="/classes" text>Classes</v-btn>
        <v-btn to="/findus" text>Find Us</v-btn>
        <v-row class="d-flex justify-center mt-3">
          <v-btn
            dark
            large
            color="white"
            text
            class="joinnow"
            href="https://voodoocombat.clubright.co.uk/register"
            target="_blank"
          >
            Adults Join now
          </v-btn>
          <v-btn
            dark
            large
            color="white"
            text
            class="joinnow mt=3"
            href="https://voodookids.clubright.co.uk/register"
            target="_blank"
          >
            Kids join now
          </v-btn>
        </v-row>
      </v-toolbar-items>
    </v-app-bar>

    <v-navigation-drawer v-model="drawer" absolute top temporary>
      <v-list nav dense class="mobilemenu">
        <v-list-item-group active-class="deep-orange--text text--accent-4">
          <v-list-item prepend-icon="mdi-view-dashboard">
            <v-list-item-icon>
              <v-icon>mdi-home</v-icon>
            </v-list-item-icon>
            <v-list-item-title>
              <nuxt-link to="/" class="" aria-label="Home Button">
                Home
              </nuxt-link>
            </v-list-item-title>
          </v-list-item>
          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-notebook</v-icon>
            </v-list-item-icon>
            <v-list-item-title>
              <nuxt-link to="/timetable" class="" aria-label="Classes">
                Timetable
              </nuxt-link>
            </v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon> mdi-weight-lifter</v-icon>
            </v-list-item-icon>
            <v-list-item-title>
              <nuxt-link to="/classes" class="" aria-label="Classes">
                Classes
              </nuxt-link>
            </v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon> mdi-chat-question</v-icon>
            </v-list-item-icon>

            <v-list-item-title to=""
              ><nuxt-link to="/information" class="" aria-label="Information">
                Information
              </nuxt-link>
            </v-list-item-title>
          </v-list-item>

          <v-list-item>
            <v-list-item-icon>
              <v-icon>mdi-notebook</v-icon>
            </v-list-item-icon>

            <v-list-item-title to=""
              ><nuxt-link to="/events" class="" aria-label="Events">
                Events
              </nuxt-link>
            </v-list-item-title>
          </v-list-item>
        </v-list-item-group>
      </v-list>
      <v-row class="mt-3">
        <v-btn
          dark
          large
          color="white"
          text
          class="joinnow"
          href="https://voodoocombat.clubright.co.uk/register"
          target="_blank"
        >
          Adults Join now
        </v-btn>
      </v-row>
      <v-row class="pt-3">
        <v-btn
          dark
          large
          color="white"
          text
          class="joinnow mt=3"
          href="https://voodookids.clubright.co.uk/register"
          target="_blank"
        >
          Kids join now
        </v-btn>
      </v-row>
    </v-navigation-drawer>
  </main>
</template>
<script>
export default {
  name: "NavBar",
  data() {
    return {
      drawer: false,
    };
  },

  methods: {
    menuItems() {
      return this.menu;
    },
  },
};
</script>

<style scoped>
.offset-top {
  margin-top: 90px;
}
.theme--light.v-toolbar.v-sheet,
.theme--dark.v-toolbar.v-sheet {
  background-color: transparent !important;
  color: white;
}
.header .col h1,
.header .col h2 {
  color: white;
}

.theme--light.v-btn.v-btn--icon {
  color: gray;
}
.home {
  cursor: pointer;
  max-height: 60px;
}
.mobilemenu a {
  color: white;
  font-size: 16px;
}
.joinnow {
  margin-left: 40px;
}
/* header {background:#EEE;display:flex;justify-content:space-between;}
.logo {font-size:2em;line-height:50px;padding:0 0.5em;}
.hamburger {padding:0 0.5em;font-size:1.5em;line-height:50px;display:inline-block;z-index:2;}

nav {position:absolute;width:100%;background:#eee;display:none;}
nav:hover {display:block;}
nav a {display:block;line-height:50px;text-align:center;}

.hamburger:hover ~ nav {display:block;}

@media only screen and ( min-width: 768px )
{
  .hamburger {display:none;}
  nav {position:static;display:flex;background:none;clear:none;flex:1;justify-content:flex-end;}
  nav:hover {display:flex;}
  nav a {padding:0 1em;}
} */
</style>
