 <template>
     <v-footer
    padless
  >
    <v-row
      justify="center"
      no-gutters
    >
    <v-col>
      <h5>Built with</h5>

    </v-col>
      <v-col
        class="py-4 text-center white--text"
        cols="12"
      >
       © {{ new Date().getFullYear() }} — <strong>Voodoo combat <a href="mailto:matt@plain.black" class="ml-2">
         <v-icon
            medium
             color="grey"
          > mdi-email</v-icon>
          </a></strong>
      </v-col>
    </v-row>
  </v-footer>
</template>
 
 <<style scoped>
 
 </style>