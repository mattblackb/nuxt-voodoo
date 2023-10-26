<template>
  <v-row>
    <v-col cols="12" sm="12" md="6" lg="3">
      <v-card class="mx-auto">
        <v-img src="davebw.png"></v-img>

        <v-card-title> Dave Kari </v-card-title>

        <v-card-subtitle>Voodoo Head Coach </v-card-subtitle>

        <v-card-actions>
          <v-btn color="orangeText " text> More Information </v-btn>

          <v-spacer></v-spacer>

          <v-btn icon @click="show = !show">
            <v-icon>{{ show ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
          </v-btn>
        </v-card-actions>

        <v-expand-transition>
          <div v-show="show">
            <v-divider></v-divider>

            <v-card-text>
              <br />
              Dave is a Martial Arts expert, training since 1983, accumulating
              vast knowledge and skill in many of the mainstream styles and
              experienced in many lesser known ones.
            </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>

    <v-col cols="12" sm="12" md="6" lg="3">
      <v-card class="mx-auto">
        <v-img src="amandabw.png"></v-img>

        <v-card-title> Amanda Kari </v-card-title>

        <v-card-subtitle>Voodoo Head Performance Coach </v-card-subtitle>

        <v-card-actions>
          <v-btn color="orangeText " text> More Information </v-btn>

          <v-spacer></v-spacer>

          <v-btn icon @click="show2 = !show2">
            <v-icon>{{ show2 ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
          </v-btn>
        </v-card-actions>

        <v-expand-transition>
          <div v-show="show2">
            <v-divider></v-divider>

            <v-card-text>
              <br />
              Dave is a Martial Arts expert, training since 1983, accumulating
              vast knowledge and skill in many of the mainstream styles and
              experienced in many lesser known ones.
            </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>

    <v-col cols="12" sm="12" md="6" lg="3">
      <v-card class="mx-auto">
        <v-img src="pablobw.png"></v-img>

        <v-card-title> Pablo Garcia </v-card-title>

        <v-card-subtitle>Voodoo Senior Coach </v-card-subtitle>

        <v-card-actions>
          <v-btn color="orangeText " text> More Information </v-btn>

          <v-spacer></v-spacer>

          <v-btn icon @click="show3 = !show3">
            <v-icon>{{ show3 ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
          </v-btn>
        </v-card-actions>

        <v-expand-transition>
          <div v-show="show3">
            <v-divider></v-divider>

            <v-card-text>
              <br />
              Pablo has many years experience in the Martial Arts and developed
              a distictive and highly successful style of coaching. He has
              trained in Full Contact Kick Boxing (2nd Dan Black Belt), Muay
              Thai and Shotokan Karate Do (1st Dan Black Belt). He also trains
              in Brazilian Jiu Jitsu (Blue Belt) and Submission / Catch
              Wrestling.
            </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>

    <v-col cols="12" sm="12" md="6" lg="3">
      <v-card class="mx-auto">
        <v-img src="joshbw.png"></v-img>

        <v-card-title> Josh Burton </v-card-title>

        <v-card-subtitle>Voodoo Senior Coach </v-card-subtitle>

        <v-card-actions>
          <v-btn color="orangeText " text> More Information </v-btn>

          <v-spacer></v-spacer>

          <v-btn icon @click="show4 = !show4">
            <v-icon>{{ show3 ? "mdi-chevron-up" : "mdi-chevron-down" }}</v-icon>
          </v-btn>
        </v-card-actions>

        <v-expand-transition>
          <div v-show="show4">
            <v-divider></v-divider>

            <v-card-text>
              <br />
              Josh has trained at Voodoo as a student from the age of 10 years
              old and has developed into a top coach in his own right as well as
              a competative fighter. He has trained and fought in full contact
              K1 Kickboxing (Black Belt) as well as Boxing. He also trains and
              has competed in Brazilian Jiu Jitsu (Blue Belt) and is an
              experienced Submission and Catch Wrestler.
            </v-card-text>
          </div>
        </v-expand-transition>
      </v-card>
    </v-col>
  </v-row>
</template>

<script>
export default {
  data: () => ({
    show: false,
    show2: false,
    show3: false,
    show4: false,
  }),
};
</script>

<style>
.orangeText--text .v-btn__content {
  color: #f06d2f !important;
}
.v-card__title {
  font-weight: 400;
  font-family: "Staatliches", display;
  font-size: 24px;
  box-sizing: border-box;

  line-height: 28px;
}
</style>
