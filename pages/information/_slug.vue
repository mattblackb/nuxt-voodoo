<template>
  <v-container>
    <div  v-if="postApp">
      <PageHeader :imageurl="checkforImage()">
            <template v-slot:header>
              {{postApp.title}}
            </template>
      </PageHeader>
        <MainView linkType="information" v-if="!postApp.postDetails2" class="inlineImg">
              <div v-html="removeVoodoo(postApp.postDetails.html)"></div>
        </MainView>

         <MainViewsplit linkType="information" v-else>
                <template v-slot:left>
             <div v-html="removeVoodoo(postApp.postDetails.html)"></div>
            </template>
               <template v-slot:right>
             <div v-html="removeVoodoo(postApp.postDetails.html)"></div>
            </template>
              
        </MainViewsplit>
    </div>
  </v-container>


</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";


export default {
    data: () => ({
    loading: 0,
    currentitem: null 
  }),
  methods: {
      removeVoodoo(string) {
      var find = 'http://voodoogym.co.uk/';
      var re = new RegExp(find, 'g');
      var str = string.replace(re, '');

        return str
    },
    checkforImage() {
      if(this.postApp.mainheaderImage){
        return this.postApp.mainheaderImage.url
      } else {
        return "/voodoo_logo.png"
      }
    }
  },
  async asyncData({ app, params }) {
      const client = app.apolloProvider.defaultClient;
      const slug = params.slug;
      const res = await client.query({
        query: GET_SINGLE_POSTS,
        variables: {
          slug,
        },
      })
      const { postApp } = res.data;
    
      return {
        postApp,slug
      }
  },
  head() {
      return {
        title: this.postApp.metaTitle,
      meta: [
        {
          hid: 'description',
          name: 'description',
          content: this.postApp.metaDescription 
        },
      ],
      }
  }
}
</script>

<style>
.sideImage img{
  max-width: 55%!important;
  width: 55%!important;
}
.maintext img {
  max-width: 100%;
  height: auto;
}
h2, b {
  color: #f06d2f;
}
.inlineImg img{
 display: inline-block;
  margin-right: 5px;
}

</style>