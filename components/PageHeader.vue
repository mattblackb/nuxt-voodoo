<template>
  <div>
    <v-row class="header mb-3 mt-2 rounded-xl">
      <v-col class="align-center">
        <h1 class="mainText"><slot name="header"></slot></h1>
        <slot name="subHeader"></slot>
        <p>
          <strong>
            Infinite Possibility | Martial Arts Academy Macclesfield</strong
          >
        </p>
      </v-col>
      <v-col class="justify-center align-center d-flex">
        <!-- <nuxt-img src="~/assets/paper.png" /> -->
        <v-img
          cover
          :src="imageurl"
          max-height="425"
          alt="frontend development macclesfield"
        ></v-img>
      </v-col>
    </v-row>

    <v-container>
      <v-row>
        <Buttons />
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  props: {
    imageurl: String,
    required: false,
  },
};
</script>
