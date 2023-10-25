<template>
  <div class="orange pa-5 mb-5">
    <v-row>
      <v-col cols="12" xs="12" sm="12">
        <h2><slot name="header"></slot></h2>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="12" sm="12" md="6">
        <div>
          <p>
            You can
            <a title="/information/venues" href="/information/venues"
              >find us</a
            >
            in the centre of Macclesfield delivering the very best of
            <a title="/classes" href="/classes">Martial Arts</a>,
            <a title="/classes/adult-classes" href="/classes/adult-classes"
              >self defence</a
            >
            and
            <a
              title="/classes/personal-training"
              href="/classes/personal-training"
              >personal training</a
            >.
          </p>
          <p>
            ⁠125A Chestergate, Macclesfield SK11 6DP<br />voodooservice@gmail.com
          </p>
          <p>
            We can help you build your fitness, confidence, ability to defend
            yourself and the body you’ve always wanted in a fun, safe but
            challenging environment. Classes for the whole family!
          </p>
          <!-- <ul>
            <li>
              <div><strong>We are Martial Arts</strong></div>
            </li>
            <li>
              <div><strong>We are Brazilian Jiu Jitsu&nbsp;</strong></div>
            </li>
            <li>
              <div>
                <strong>We are Submission / Catch&nbsp;Wrestling&nbsp;</strong>
              </div>
            </li>
            <li>
              <div><strong>We are Thai / Kick Boxing</strong></div>
            </li>
            <li>
              <div><strong>We are Boxing (for Kickboxers)</strong></div>
            </li>
            <li>
              <div><strong>We are Shotokan Karate Do</strong></div>
            </li>
            <li>
              <div><strong>We are Self Defence</strong></div>
            </li>
          </ul> -->
          <h4><br />FREE...<br />INDUCTION, MEMBERSHIP AND INSURANCE!</h4>

          <p></p>
        </div>
      </v-col>
      <v-col cols="12" sm="12" md="6" class="hundred flex-wrap">
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
  },
};
</script>

<style scoped>
.orange {
  background-color: #f06d2f !important;
  color: black;
}
h2 {
  color: black;
}
h4 {
  line-height: 30px;
  color: black;
}
@media (max-width: 1275px) {
  img {
    min-width: 100% !important;
    width: 100%;
  }
}
</style>
