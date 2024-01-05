<template>
  <v-row class="mx-auto">
    <v-col cols="12" md="6">
      <!-- Kids {{ kidsParties }} -->
      <h2>VOODOO MEMBERS EVENTS</h2>

      <h3>Voodoo Annual Christmas Awards</h3>
      <p>
        Macclesfield Masonic Hall<br />
        Saturday, 23 November 2024 at 18.30pm onwards<br />

        <!-- <a href="/" target="_blank">Members only, Click here to book</a> -->
      </p>

      <h3>Christmas Open Mats</h3>
      <p>
        Members only - Thai Kickboxers and Grapplers<br />
        From 10.00am to 11.30am
      </p>
      <h4>Friday 27th at Head Quarters</h4>
      <br />
      <h4>Saturday 28th at Recharge</h4>
      <br />
      <h4>Sunday 29th at Head Quarters</h4>
      <br />
      <h4>Monday 30th at Recharge</h4>
      <br />
      <h4>Thursday 2nd at Head Quarters</h4>
      <br />
      <h4>Friday 3rd at Recharge</h4>
      <br />
    </v-col>

    <v-col cols="12" md="6">
      <!-- Kids {{ kidsParties }} -->
      <h2>COACHES TRAINING EVENTS</h2>
      <div v-for="party in adultTrials" :key="party.day">
        <h3 class="nolineheight">{{ party.text }}</h3>
        <p>
          {{ party.day }}<br />
          {{ party.startTime }} to {{ party.endTime }} <br />

          <!-- <a :href="party.link" target="_blank">Click here to book</a> -->
        </p>
      </div>
    </v-col>
  </v-row>
</template>
<script>
import events from "~/static/events.json";

export default {
  data: () => ({
    adultTrials: [],
  }),
  methods: {
    GetResetData() {
      var eventsData = events;
      const result = [];

      eventsData.members.coachestraining.forEach((obj) => {
        result.push(obj);
      });

      this.adultTrials = result;
    },
  },

  beforeMount() {
    //for each class in adult classes group by day
    //for each day create a new object
    this.GetResetData();
  },
};
</script>

<style>
.nolineheight {
  line-height: 35px !important;
}
</style>
