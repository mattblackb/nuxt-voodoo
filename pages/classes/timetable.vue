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
          <TimetableFull />
        </v-tab-item>
        <v-tab-item>
          <Closures />
        </v-tab-item>
      </v-tabs-items>
    </v-card>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      tab: null,
    };
  },
};
</script>

<style>
.v-tab--active {
  background-color: #f06d2f !important;
}
</style>
