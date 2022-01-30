/<template>
        <div>
            <h2>Similar pages {{linkType}}</h2>

                <ul v-if="linkType == 'information'">
                    <li><n-link to="/information/information/" no-prefetch>Information</n-link></li>
                    <li><n-link to="/information/joinvoodoo" no-prefetch>Join Voodoo</n-link></li>
                    <li><n-link to="/information/venues/" no-prefetch>Find Us</n-link></li>
                     <li><n-link to="/information/your-coaches/" no-prefetch>Your Coaches</n-link></li>
                    
                </ul>

                   <ul v-if="linkType == 'classes'">
                    <li><n-link to="/classes/timetable/" no-prefetch>Timetable</n-link></li>
                    <li><n-link to="/classes/gym-closures/" no-prefetch>Gym Closures</n-link></li>
                    <li><n-link to="/classes/childrens-classes-children/" no-prefetch>Children classes</n-link></li>
                     <li><n-link to="/classes/grappling-programme/" no-prefetch>Grappling Program</n-link></li>
                     <li><n-link to="/classes/kickboxing/" no-prefetch>Striking Program</n-link></li>
                     <li><n-link to="/classes/adult-classes" no-prefetch>Other Adult classes</n-link></li>
                        <li><n-link to="/classes/personal-training/" no-prefetch>Personal training</n-link></li>
                </ul>
        
        </div>
</template>

<script>
export default {
    props: {
        linkType: String,
        required: false
    }
}
</script>