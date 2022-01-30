  <template>
  
  <div class="orange  pa-5 mb-5">
      <v-row>
        <v-col  sm="12">
              <h2><slot name="header"></slot></h2>
          </v-col>
        </v-row>
          <v-row>
           <v-col sm="12" md="6">
              <slot name="left"></slot>
          </v-col>
         <v-col  sm="12" md="6">
               <slot name="right"></slot>
          </v-col>
         </v-row>
    </div>
</template>

<script>
export default {
    props: {
        // imageurl: String,
        // required: false
    }
}
</script>

<style scoped>
    .orange { background-color: #f06d2f!important; color: black}
    h2 {color: white; font-size: 32px;}
</style>