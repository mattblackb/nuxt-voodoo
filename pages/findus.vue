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
        <v-tab> Voodoo HQ </v-tab>
        <v-tab> Voodoo Recharge </v-tab>
      </v-tabs>

      <v-tabs-items v-model="tab">
        <v-tab-item class="pa-4">
          <h2>VOODOO HQ</h2>
          <div
            style="
              overflow: hidden;
              max-width: 100%;
              width: 500px;
              height: 500px;
            "
          >
            <div
              id="embed-ded-map-canvas"
              style="height: 300px; width: 100%; max-width: 100%"
            >
              <iframe
                style="height: 300px; width: 100%; border: 0"
                frameborder="0"
                src="https://www.google.com/maps/embed/v1/place?q=Voodoo+Combat+HQ,+Chestergate,+Macclesfield,+UK&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
              ></iframe>

              <h4>
                125 Chestergate,<br />
                Macclesfield <br />SK11 6DP
              </h4>
            </div>

            <style>
              #embed-ded-map-canvas img.text-marker {
                max-width: none !important;
                background: none !important;
              }
              img {
                max-width: none;
              }
            </style>
          </div>
        </v-tab-item>
        <v-tab-item class="pa-4">
          <h2>VOODOO RECHARGE</h2>
          <div
            style="
              overflow: hidden;
              max-width: 100%;
              width: 500px;
              height: 500px;
            "
          >
            <div
              id="embed-ded-map-canvas"
              style="height: 300px; width: 100%; max-width: 100%"
            >
              <iframe
                style="height: 300px; width: 100%; border: 0"
                frameborder="0"
                src="https://www.google.com/maps/embed/v1/place?q=Voodoo+Recharge,+Sunderland+Street,+Macclesfield,+UK&key=AIzaSyBFw0Qbyq9zTFTd-tUY6dZWTgaQzuU17R8"
              ></iframe>

              <h4>2 Sunderland Street, <br />Macclesfield, <br />UK</h4>
            </div>

            <style>
              #embed-ded-map-canvas img.text-marker {
                max-width: none !important;
                background: none !important;
              }
              img {
                max-width: none;
              }
            </style>
          </div>
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
