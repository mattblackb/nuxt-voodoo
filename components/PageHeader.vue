  <template>
  
  <v-row class="header mb-10 mt-2 rounded-xl">
          <v-col>
              <h1 class="mainText"><slot name="header"></slot></h1>
              <h2 class="headerText"><slot name="subHeader"></slot></h2>
          </v-col>
        <v-col class="justify-center align-center d-flex"> 
            <!-- <nuxt-img src="~/assets/paper.png" /> -->
          <img :src="imageurl" alt="frontend development macclesfield"/>
        </v-col>
    </v-row>
</template>

<script>
export default {
    props: {
        imageurl: String,
        required: false
    }
}
</script>