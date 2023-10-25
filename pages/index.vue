<template>
  <main>
    <!-- Loop around unique categories -->
    <PageHeader :imageurl="checkforImage()">
      <template v-slot:header>
        {{ postApp.title }}
      </template>
      <template v-slot:subHeader>
        <ul>
          <li>We are Martial Arts</li>
          <li>We are Brazilian Jiu Jitsu</li>
          <li>We are Submission / Catch Wrestling</li>
          <li>We are Thai / Kick Boxing</li>
          <li>We are Boxing (for Kickboxers)</li>
          <li>We are Shotokan Karate Do</li>
          <li>We are Self Defence</li>
        </ul>
        <h4>
          email:<a href="mailto:voodooservice@gmail.com">
            voodooservice@gmail.com</a
          >
        </h4>
      </template>
    </PageHeader>
    <v-container>
      <SplitViewHead>
        <template v-slot:header>
          {{ postApp.headerTitle }}
        </template>
        <template v-slot:left>
          <div v-html="postApp.headerText.html"></div>
        </template>
        <template v-slot:right>
          <img
            :src="postApp.headerImage.url"
            alt="voodoo combat macclesfield"
          />
        </template>
      </SplitViewHead>
      <v-row> </v-row>
      <v-row v-if="postApp.postDetails2.html">
        <SplitView>
          <template v-slot:left>
            <div v-html="postApp.postDetails.html"></div>
          </template>
          <template v-slot:right>
            <div v-html="postApp.postDetails2.html"></div>
          </template>
        </SplitView>
      </v-row>
      <v-row>
        <v-col cols="12">
          <div class="d-flex justify-center">
            <h2 class="">Our Coaches</h2>
          </div>
        </v-col>
      </v-row>
      <Coaches />
      <v-row v-if="postApp.postFooter.html" class="d-flex justify-center">
        <v-col cols="12">
          <div v-html="postApp.postFooter.html" class="hundres"></div>
        </v-col>
      </v-row>
    </v-container>
  </main>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";

export default {
  data: () => ({
    loading: 0,
    currentitem: null,
  }),
  methods: {
    checkforImage() {
      if (this.postApp.mainheaderImage) {
        return this.postApp.mainheaderImage.url;
      } else {
        return "/voodoo_logo.png";
      }
    },
  },
  async asyncData({ app, params }) {
    const client = app.apolloProvider.defaultClient;
    const slug = "voodoo_combat_home";

    const res = await client.query({
      query: GET_SINGLE_POSTS,
      variables: {
        slug,
      },
    });
    const { postApp } = res.data;

    return {
      postApp,
      slug,
    };
  },
  head() {
    return {
      title: this.postApp.metaTitle,
      meta: [
        {
          hid: "description",
          name: "description",
          content: this.postApp.metaDescription,
        },
      ],
    };
  },
};
</script>

<style scoped>
@media (max-width: 1275px) {
  img {
    max-width: 100% !important;
    width: 100%;
  }
  .hundres img {
    max-width: 100% !important;
    width: 100% !important;
    display: none;
  }
}
</style>
