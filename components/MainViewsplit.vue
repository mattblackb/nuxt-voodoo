<template>
    <v-row>
            <v-col cols=12 sm=12 md=4 class="pa-3">
                <slot name="left"></slot>
            </v-col>
            <v-col cols=12 sm=12 md=4 class="pa-3">
                <slot name="right"></slot>
            </v-col>
             <v-col cols=12 sm=12 md=4 class="pa-3">
                <Information :linkType="linkType"/>
            </v-col>
            

    </v-row>


</template>


<script>
import Information from './sidelinks/Information.vue'
export default {
  components: { Information },
    props: {
        linkType: String,
        required: false
    }
}
</script>