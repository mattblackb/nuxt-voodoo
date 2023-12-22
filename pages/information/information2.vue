<template>
  <v-container>
    <div v-if="postApp">
      <PageHeader :imageurl="checkforImage()">
        <template v-slot:header>
          {{ postApp.title }}
        </template>
      </PageHeader>
      <MainView linkType="information" class="inlineImg">
        <div v-html="removeVoodoo(postApp.postDetails.html)"></div>
      </MainView>
      <v-row justify="center">
        <Accordion v-if="postApp.accordion1Header">
          <template v-slot:header1>
            <h3>{{ postApp.accordion1Header }}</h3>
          </template>

          <template v-slot:content1>
            <!-- Your content here -->
            <div v-html="postApp.accordion1Content.html"></div>
          </template>

          <template v-slot:header2>
            <h3>{{ postApp.accordion2Header }}</h3>
          </template>

          <template v-slot:content2>
            <!-- Your content here -->
            <div v-html="postApp.accordion2Text.html"></div>
          </template>

          <template v-slot:header3>
            <h3>{{ postApp.accordion3Header }}</h3>
          </template>

          <template v-slot:content3>
            <!-- Your content here -->
            <div v-html="postApp.accordion3Content.html"></div>
          </template>
        </Accordion>
      </v-row>
      <v-row>
        <div v-html="postApp.postDetails2.html"></div>
      </v-row>
    </div>
  </v-container>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";

export default {
  data: () => ({
    loading: 0,
    currentitem: null,
  }),
  methods: {
    removeVoodoo(string) {
      var find = "http://voodoogym.co.uk/";
      var re = new RegExp(find, "g");
      var str = string.replace(re, "");

      return str;
    },
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
    const slug = "information2";
    const res = await client.query({
      query: GET_SINGLE_POSTS,
      variables: {
        slug,
      },
    });
    const { postApp } = res.data;
    console.log(postApp);
    return {
      postApp,
      slug,
    };
  },
  head() {
    return {};
  },
};
</script>

<style>
.sideImage img {
  max-width: 55% !important;
  width: 55% !important;
}
.maintext img {
  max-width: 100%;
  height: auto;
}
h2,
b {
  color: #f06d2f;
}
.inlineImg img {
  display: inline-block;
  margin-right: 5px;
}
</style>
