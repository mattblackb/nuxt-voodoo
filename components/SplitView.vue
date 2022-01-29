  <template>
  
  <v-row class="pa-5">
           <v-col cols="12" sm="12" md="6">
              <slot name="left"></slot>
          </v-col>
         <v-col  cols="12" sm="12" md="6">
               <slot name="right"></slot>
          </v-col>
    </v-row>
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
    .orange { background-color: orange; color: black}
    h2 {color: white}
</style>