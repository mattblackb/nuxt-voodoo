<template>
  <v-container>
    <div>
      <PageHeader>
        <template v-slot:header> Personal training </template>
        <template v-slot:subHeader>
          <!-- <ul>
            <li>We are Martial Arts</li>
            <li>We are Brazilian Jiu Jitsu</li>
            <li>We are Submission / Catch Wrestling</li>
            <li>We are Thai / Kick Boxing</li>
            <li>We are Boxing (for Kickboxers)</li>
            <li>We are Shotokan Karate Do</li>
            <li>We are Self Defence</li>
          </ul> -->
          <h4>
            email:<a href="mailto:voodooservice@gmail.com">
              voodooservice@gmail.com</a
            >
          </h4>
        </template>
      </PageHeader>
      <v-row class="mt-2">
        <v-col cols="12">
          <div class="d-flex justify-center"></div>
        </v-col>
        <v-col cols="12" sm="12" md="12">
          <div>
            <h2>Voodoo Personal Training</h2>
            <p>
              Personal Training has become far more popular over recent years
              mainly due to the demand to achieve positive changes quickly and
              professionally. Do you want to learn a martial art as a sport, to
              defend yourself or for the arts sake? Perhaps get a little fitter,
              support your mental health, or need to rehabilitate from injury or
              illness? Maybe you want to transform your body ready for that
              holiday or just fit back into your favourite clothes? Are you
              already training in the martial arts and want to step up to the
              next level? There are endless reasons that our clients come to us
              for personal training. Some want to train without the need to
              attend a public class, its just so much more convenient. Others
              want to build their skills quickly and then apply them in the
              classes. Others have very specific fitness or development targets
              that are challenging to achieve any other way. Whatever the
              reason, we tailor your personal training to suit your exact needs
              to achieve any goal you might have. We can Help!
            </p>

            <!-- <p>
              To keep up to date with current events take a look at our&nbsp;<a
                title="/classes/events/"
                href="/classes/events/"
                >Events</a
              >&nbsp;page.
            </p> -->
          </div>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2>What we deliver</h2>
          </div>
        </v-col>

        <v-col cols="12" sm="12">
          <div>
            Our personal training sessions consist of a one hour class with your
            own highly qualified coach specialising in the development you
            require. It takes place at the gym. The first time you come to us we
            will discuss your goals, expectations and concerns. Together we will
            come up with a plan of action and then make it happen. Sessions are
            available by appointment throughout the week, day and evening,
            depending on availability. Most of our clients book one or two
            sessions per week to maximise their results, although there are no
            rules on how you do it, you have complete control. There is a wide
            range of skills we teach. You can choose from any of the following
            martial arts:<br />
            BRAZILIAN JIU JITSU<br />CATCH / SUBMISSION WRESTLING <br />THAI /
            KICKBOXING BOXING We can formulate any combination of the above
            martial arts and areas of health development. Practising the martial
            arts often carries many health benefits without the need to train
            them separately, talk to your coach. In short, we can cater for any
            of your health and development needs.
          </div>
        </v-col>
      </v-row>
      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2>Your Investment</h2>
          </div>
        </v-col>

        <v-col cols="12" sm="12">
          <div>
            <p>
              We suggest you attend a free induction at the gym to talk to one
              of our coaches and have a look around. Message us at
              voodooservice@gmail.com for more information. However this is not
              necesary if you know basically what you want. Voodoo Combat
              membership is free and also give member to member insurance free
              too. We will even give you a free gumsheild on your first class.
              For a one hour personal training session for most of the martial
              arts taught here, the cost would be £32. To minimise your outlay
              you can invite others to your session, up to three people in total
              at no addition cost. Above three people we charge £10 per each
              additional person. You can purchase a block of 12 classes at a
              discounted rate of £324, that works out as only £27 per session.
            </p>
            <p>
              Why people train with us is not anywhere near as important as why
              they keep coming back. For friendly, professional personal
              training you know we deliver. Contact us now at
              voodooservice@gmail.com to find out more or book your personal
              training session.
            </p>
          </div>
        </v-col>
      </v-row>
    </div>
  </v-container>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";

export default {
  data: () => ({
    loading: 0,
    currentitem: null,
    panel: [false, true, true],
  }),
  methods: {
    removeVoodoo(string) {
      var find = "http://voodoogym.co.uk";
      var re = new RegExp(find, "g");
      var str = string.replace(re, "");
      return str;
    },
    checkforImage() {
      if (this.postApp.mainheaderImage) {
        return this.postApp.mainheaderImage.url;
      } else {
        return "/voodoo_logo.png";
      }
    },
  },

  head() {
    return {
      title:
        "Kickboxing Classes in Macclesfield, Cheshire| Voodoo Combat Macclesfield",
      meta: [
        {
          hid: "description",
          name: "description",
          content:
            "Elevate your fitness and skills with our dynamic Kickboxing classes in macclesfield, Cheshire. Expert trainers, high-energy workouts. Join us for a knockout experience!",
        },
      ],
    };
  },
};
</script>

<style>
.h4noPad {
  margin-top: 0px !important;
  margin-bottom: 20px !important;
  padding-top: 0px !important;
  line-height: 0px;
}
.marginTopPad {
  color: #f06d2f !important;
}
.nopadTop {
  margin-top: 0px !important;
  margin-bottom: 20px !important;
  padding-top: 0px !important;
  line-height: 0px;
  color: #f06d2f !important;
}
.sideImage img {
  max-width: 55% !important;
  width: 55% !important;
}
img {
  margin-top: 10px !important;
}
.maintext img {
  max-width: 100%;
  height: auto;
}
</style>
