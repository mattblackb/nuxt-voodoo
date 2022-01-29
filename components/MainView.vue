<template>
    <v-row>
            <v-col cols=12 sm=12 md=8 class="pa-3">
                <slot></slot>
            </v-col>

            <v-col cols=12 sm=12 md=4 class="pa-3" v-if="linkType == 'information'">
                <ul>
                    <li><n-link to="/information/information/" no-prefetch>Information</n-link></li>
                    <li><n-link to="/information/joinvoodoo" no-prefetch>Join Voodoo</n-link></li>
                    <li><n-link to="/information/venues/" no-prefetch>Find Us</n-link></li>
                     <li><n-link to="/information/your-coaches/" no-prefetch>Your Coaches</n-link></li>
                    
                </ul>
            </v-col>

    </v-row>


</template>

<script>
export default {
    props: {
        linkType: String,
        required: false
    }
}
</script>