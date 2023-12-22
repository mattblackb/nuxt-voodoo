<template>
  <main>
    <v-row>
      <v-col cols="12" sm="12" md="12" class="pa-3">
        <slot></slot>
      </v-col>
    </v-row>
  </main>
</template>

<script>
import Information from "./sidelinks/Information.vue";
export default {
  components: { Information },
  props: {
    linkType: String,
    required: false,
  },
};
</script>
