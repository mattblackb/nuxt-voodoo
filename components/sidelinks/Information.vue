<template>
  <div>
    <h2>Similar pages</h2>

    <ul v-if="linkType == 'information'">
      <li><n-link to="/information/venues/" no-prefetch>Find Us</n-link></li>
      <li>
        <n-link to="/information/your-coaches/" no-prefetch
          >Your Coaches</n-link
        >
      </li>
      <li><n-link to="/classes/events/" no-prefetch>Events</n-link></li>
    </ul>

    <ul v-if="linkType == 'classes'">
      <li><n-link to="/classes/timetable/" no-prefetch>Timetable</n-link></li>
      <!-- <li>
        <n-link to="/classes/gym-closures/" no-prefetch>Gym Closures</n-link>
      </li> -->
      <li>
        <n-link to="/classes/childrens-classes-children/" no-prefetch
          >Children classes</n-link
        >
      </li>
      <li>
        <n-link to="/classes/grappling-programme/" no-prefetch
          >Grappling Program</n-link
        >
      </li>
      <li>
        <n-link to="/classes/kickboxing/" no-prefetch>Striking Program</n-link>
      </li>
      <!-- <li>
        <n-link to="/classes/adult-classes" no-prefetch
          >Other Adult classes</n-link
        >
      </li> -->
      <li>
        <n-link to="/classes/personal-training/" no-prefetch
          >Personal training</n-link
        >
      </li>
    </ul>

    <ul v-if="linkType == 'gradings'">
      <li>
        <n-link to="/gradings/gradings-bjj-adult/" no-prefetch
          >Adult Brazilian Jiu Jitsu</n-link
        >
      </li>
      <li>
        <n-link to="/gradings/gradings-bjj-kids/" no-prefetch
          >Junior / Cadet Brazilian Jiu Jitsu Gradings</n-link
        >
      </li>
      <li>
        <n-link to="/gradings/adult-kick-boxing-grading/" no-prefetch
          >Adult Thai / Kick Boxing Gradings</n-link
        >
      </li>
      <li>
        <n-link to="/gradings/adult-shotokan-karate-do-gradings/" no-prefetch
          >Adult Shotokan Karate Do Grading</n-link
        >
      </li>
      <li>
        <n-link to="/gradings/childrens-classes/" no-prefetch
          >Cadets Kick Boxing Gradings</n-link
        >
      </li>
      <li>
        <n-link to="/gradings/junior-kick-boxing-gradings" no-prefetch
          >Junior Kick Boxing Gradings</n-link
        >
      </li>
    </ul>
    <br /><br />
    <v-btn
      dark
      large
      color="white"
      text
      class="joinnow"
      href="https://voodoocombat.clubright.co.uk/register"
      target="_blank"
    >
      Join now
    </v-btn>
  </div>
</template>

<script>
export default {
  props: {
    linkType: String,
    required: false,
  },
};
</script>

<style scoped>
ul li {
  list-style: none;
  padding: 0px 0px 3px 0px;
  margin-left: 0px;
}
ul {
  padding-left: 0px;
}
ul li a {
  color: white;
}
</style>
