 <template>
     <v-footer
    padless
  >
    <v-row
      justify="center"
      no-gutters
      class="footer_back "
    >
    <v-col class="contact mt-5 mb-5 ">


      <v-card
    class="mx-auto"
    max-width="344"
    outlined

  >
    <v-list-item three-line >
      <v-list-item-content class="justify-center d-flex">
        <div class="text-overline mb-4 text-center">
          CONTACT VOODOO
        </div>
        <!-- <v-list-item-title class="text-h5 mb-1 text-center">
          Tel: 07776 376379
        </v-list-item-title> -->
        <v-list-item-subtitle class="text-center"><p>Voodoo Combat, Macclesfield</p>
      <p>125 Chestergate, Macclesfield SK11 6DP</p></v-list-item-subtitle>
      </v-list-item-content>

      <!-- <v-list-item-avatar
        tile
        size="80"
        color="grey"
      ></v-list-item-avatar> -->
    </v-list-item>

    <v-card-actions class="justify-center d-flex">
      <v-btn
        outlined
        rounded
        text
        href= "mailto:voodooservice@gmail.com"
      >
        Email
      </v-btn>
    </v-card-actions>
  </v-card>


  
    </v-col>
      <v-col
        class="py-4 text-center white--text"
        cols="12"
      >
       © {{ new Date().getFullYear() }} — <strong>Voodoo combat </strong>
      </v-col>
    </v-row>
  </v-footer>
</template>
 
 <style scoped>
  .footer_back{
    background: #f06d2f;
    background-image: url("/contactHeader.png");
  }
 </style>