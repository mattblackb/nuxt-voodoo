<template>
  <v-row class="mx-auto">
    <v-col cols="12" md="6">
      <!-- Kids {{ kidsParties }} -->
      <h2>VOODOO TRIALS</h2>
      <div v-for="party in adultTrials" :key="party.day">
        <h3>{{ party.text }}</h3>
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

      eventsData.adults.trials.forEach((obj) => {
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
