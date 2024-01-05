<template>
  <v-row class="mx-auto">
    <v-col cols="12" md="6">
      <!-- Kids {{ kidsParties }} -->
      <h2>Kids Parties</h2>
      <div v-for="party in kidsParties" :key="party.day">
        <h3>{{ party.title }}</h3>
        <p>
          {{ party.day }}<br />
          {{ party.startTime }} to {{ party.endTime }} pm<br />

          {{ party.location }}<br />
          {{ party.text }}<br />
          <!-- <a :href="party.link" target="_blank">Click here to book</a> -->
        </p>
      </div>
    </v-col>
    <v-col cols="12" md="6">
      <!-- Kids {{ kidsParties }} -->
      <h2>Gradings</h2>
      <h3>JUNIOR & CADET BJJ GRADINGS</h3>
      <div v-for="gradding in kidsGraddingsBJJJunior" :key="gradding.day">
        <h4>{{ gradding.day }}</h4>
        <p>
          {{ gradding.startTime }} to {{ gradding.endTime }} pm<br />
          {{ gradding.text }}
        </p>
      </div>

      <h3>JUNIOR KICKBOXING GRADINGS</h3>
      <div v-for="gradding in kidsGradingsKBJunior" :key="gradding.day">
        <h4>{{ gradding.day }}</h4>
        <p>
          {{ gradding.startTime }} to {{ gradding.endTime }} pm<br />
          {{ gradding.text }}
        </p>
      </div>

      <h3>CADET KICKBOXING GRADINGS</h3>
      <div v-for="gradding in kidsGradingsKBCadet" :key="gradding.day">
        <h4>{{ gradding.day }}</h4>
        <p>
          {{ gradding.startTime }} to {{ gradding.endTime }} pm<br />
          {{ gradding.text }}
        </p>
      </div>

      <h3>JUNIOR & CADET KARATE GRADINGS</h3>
      <h4><i>Held at Voodoo Recharge</i></h4>
      <div v-for="gradding in kidsGraddingsKarate" :key="gradding.day">
        <h4>{{ gradding.day }}</h4>
        <p>
          {{ gradding.startTime }} to {{ gradding.endTime }} pm<br />
          {{ gradding.text }}
        </p>
      </div>
    </v-col>
  </v-row>
</template>
<script>
import events from "~/static/events.json";

export default {
  data: () => ({
    kidsParties: [],
    kidsGraddingsBJJJunior: [],
    kidsGradingsKBJunior: [],
    kidsGradingsKBCadet: [],
    kidsGraddingsKarate: [],
  }),
  methods: {
    GetResetData() {
      var eventsData = events;
      const result = [];
      const resultKBJunior = [];
      const resultJuniorBJJ = [];
      const resultKBCadet = [];
      const resultsKarate = [];
      const days = [];

      eventsData.kids.parties.forEach((obj) => {
        result.push(obj);
      });

      eventsData.kids.bjjgradingjunior.forEach((obj) => {
        resultJuniorBJJ.push(obj);
      });
      console.log(eventsData.kids.kbgradingjunior);
      eventsData.kids.kbgradingjunior.forEach((obj) => {
        resultKBJunior.push(obj);
      });

      eventsData.kids.kbgradingcadet.forEach((obj) => {
        resultKBCadet.push(obj);
      });

      eventsData.kids.karategradingcadet.forEach((obj) => {
        resultsKarate.push(obj);
      });

      this.kidsParties = result;
      this.kidsGraddingsBJJJunior = resultJuniorBJJ;
      this.kidsGradingsKBJunior = resultKBJunior;
      this.kidsGradingsKBCadet = resultKBCadet;
      this.kidsGraddingsKarate = resultsKarate;
    },
  },

  beforeMount() {
    //for each class in adult classes group by day
    //for each day create a new object
    this.GetResetData();
  },
};
</script>
