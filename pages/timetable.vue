<template>
  <v-container>
    <div>
      <PageHeader>
        <template v-slot:header> TIMETABLE </template>
      </PageHeader>
    </div>

    <v-card class="mt-5">
      <!-- <v-card-title class="text-center justify-center py-6">
        <h1 class="font-weight-bold text-h2 basil--text">BASiL</h1>
      </v-card-title> -->

      <v-tabs v-model="tab" background-color="transparent" color="basil" grow>
        <v-tab> Timetable </v-tab>
        <v-tab> Gym Closures </v-tab>
      </v-tabs>

      <v-tabs-items v-model="tab">
        <v-tab-item>
          <TimetableFull
            :adultClassesProp="adultsProp"
            :kidsClassesProp="kidsProp"
          />
        </v-tab-item>
        <v-tab-item>
          <Closures />
        </v-tab-item>
      </v-tabs-items>
    </v-card>
  </v-container>
</template>

<script>
import GET_ALL_TABLES from "~/queries/timetables.gql";
export default {
  data() {
    return {
      tab: null,
    };
  },
  async asyncData({ app, params }) {
    const client = app.apolloProvider.defaultClient;
    const res = await client.query({
      query: GET_ALL_TABLES,
    });
    const postApp = res.data.adultTimetables;
    // console.log("postApp", postApp, res.data);
    let adultsProp = [];
    let kidsProp = [];
    if (postApp[0]) {
      adultsProp = postApp[0].allTimetables;
      kidsProp = postApp[1].allTimetables;
    }

    return {
      kidsProp,
      adultsProp,
      postApp,
    };
  },
};
</script>

<style>
.v-tab--active {
  background-color: #f06d2f !important;
}
</style>
