<template>
   <main>
  <!-- Loop around unique categories -->
        <PageHeader :imageurl="checkforImage()">
        <template v-slot:header>
           {{postApp.title}}
        </template>
         <template v-slot:subHeader>
           email:<br/>
           voodooservice@gmail.com
        </template>
        </PageHeader>
          <v-container>    
            <SplitViewHead>
                  <template v-slot:header>
                        {{postApp.headerTitle}}
                      </template>
                     <template v-slot:left>
                       <div v-html="postApp.headerText.html"></div>
                      </template>
                      <template v-slot:right>
                        <img :src="postApp.headerImage.url" alt="voodoo combat macclesfield">
                      </template>
            </SplitViewHead>
             <v-row>
       
            </v-row>
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
             <v-row v-else>
               Standard View
             </v-row>
              <v-row v-if="postApp.postFooter.html" class="d-flex justify-center">
                <v-col  cols="12">
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
    currentitem: null 
  }),
  methods: {
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
      const slug = "voodoo_combat_home"
      
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

<style scoped>


@media (max-width: 1275px) {
        img{
    max-width: 100%!important;
    width: 100%;

        }
         .hundres img {
            max-width: 100%!important;
             width: 100%!important;
            display: none;
         }
         }
      
</style>
