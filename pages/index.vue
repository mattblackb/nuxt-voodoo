<template>
  <main>
    <!-- Loop around unique categories -->
    <PageHeader imageurl="BJJ.jpeg">
      <template v-slot:header>
        {{ postApp.title }}
      </template>
      <template v-slot:subHeader>
        <ul>
          <li>We are Martial Arts</li>
          <li>We are Brazilian Jiu Jitsu</li>
          <li>We are Submission / Catch Wrestling</li>
          <li>We are Thai / Kick Boxing</li>
          <li>We are Boxing (for Kickboxers)</li>
          <li>We are Shotokan Karate Do</li>
          <li>We are Self Defence</li>
        </ul>
        <h4>
          email:<a href="mailto:voodooservice@gmail.com">
            voodooservice@gmail.com</a
          >
        </h4>
      </template>
    </PageHeader>
    <v-container>
      <SplitViewHead>
        <template v-slot:header> Welcome to Voodoo Combat </template>
        <template v-slot:left>
          <div data-v-529bde94="">
            <p data-v-529bde94="">
              You can
              <a
                data-v-529bde94=""
                title="/information/venues"
                href="/information/venues"
                >find us</a
              >
              in the centre of Macclesfield delivering the very best of
              <a data-v-529bde94="" title="/classes" href="/classes"
                >Martial Arts</a
              >,
              <a
                data-v-529bde94=""
                title="/classes/adult-classes"
                href="/classes/adult-classes"
                >self defence</a
              >
              and
              <a
                data-v-529bde94=""
                title="/classes/personal-training"
                href="/classes/personal-training"
                >personal training</a
              >.
            </p>
            <p data-v-529bde94="">
              ⁠125A Chestergate, Macclesfield SK11 6DP<br
                data-v-529bde94=""
              />voodooservice@gmail.com
            </p>
            <p data-v-529bde94="">
              We can help you build your fitness, confidence, ability to defend
              yourself and the body you’ve always wanted in a fun, safe but
              challenging environment. Classes for the whole family!
            </p>
            <h4 data-v-529bde94="">
              <br data-v-529bde94="" />FREE...<br
                data-v-529bde94=""
              />INDUCTION, MEMBERSHIP AND INSURANCE!
            </h4>
            <p data-v-529bde94=""></p>
          </div>
        </template>
        <template v-slot:right>
          <img
            :src="postApp.headerImage.url"
            alt="voodoo combat macclesfield"
          />
        </template>
      </SplitViewHead>
      <v-row> <TimetableToday /> </v-row>
      <v-row v-if="postApp.postDetails2.html">
        <SplitView>
          <template v-slot:left>
            <div data-v-2a183b29="" data-v-d9f20ad8="">
              <h2>ADULTS AT VOODOO</h2>
              <p>
                Our reputation is that of creating a welcoming, family feel
                about the gym supported by a great team and facility. We love to
                help people achieve their personal goals and experience
                something special that will last a lifetime.
              </p>
              <p>
                We teach a range of martial arts;
                <a title="Descriptions of all our classes." href="/classes"
                  >‘Brazilian Jiu Jitsu (BJJ)’, ‘Submission / Catch Wrestling’,
                  ‘Muay Thai / Kick Boxing’, ‘Boxing (for Kickboxers)’ and 'Self
                  Defence' </a
                >for all ages and levels.
              </p>
              <p>
                Teaching effective ‘live’ martial arts to the ordinary person
                lies at the heart of our gym, utilizing cutting edge coaching
                techniques usually reserved for elite athletes, creating a safe
                environment that accelerates personal development.
              </p>
            </div>
          </template>
          <template v-slot:right>
            <div data-v-2a183b29="" data-v-d9f20ad8="">
              <h2>KIDS AT VOODOO</h2>
              <p>
                We deliver several
                <a
                  title="Descriptions of all our kids classes."
                  href="/classes/childrens-classes/"
                  >children’s classes</a
                >
                to suit all possible needs, our focus is for your child’s
                learning, keeping fit and active, building confidence, becoming
                bully proof and above all to having FUN.
              </p>
              <p>
                For children from 4 to 7 years old we have infant classes, our
                Voodoo Ninja and Samurai, and for the 8 to 11 year old children
                we have our Junior classes and then for the 12 to 15 year olds
                we have our Cadet classes.
              </p>
              <p>
                All our fully qualified coaches are First Aid and Safeguarding
                trained and have been subjected to a Disclosure and Barring
                Service (DBS) check (was CRB check) to ensure your child’s
                safety.
              </p>
              <p></p>
            </div>
          </template>
        </SplitView>
      </v-row>
      <v-row>
        <v-col cols="12">
          <div class="d-flex justify-center">
            <h2 class="">Our Coaches</h2>
          </div>
        </v-col>
      </v-row>
      <Coaches />
      <v-row v-if="postApp.postFooter.html" class="d-flex justify-center">
        <v-col cols="12">
          <div v-html="postApp.postFooter.html" class="hundres"></div>
        </v-col>
      </v-row>
    </v-container>
  </main>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";

export default {
  data: () => ({
    loading: 0,
    currentitem: null,
  }),
  methods: {
    checkforImage() {
      if (this.postApp.mainheaderImage) {
        return this.postApp.mainheaderImage.url;
      } else {
        return "/voodoo_logo.png";
      }
    },
  },
  async asyncData({ app, params }) {
    const client = app.apolloProvider.defaultClient;
    const slug = "voodoo_combat_home";

    const res = await client.query({
      query: GET_SINGLE_POSTS,
      variables: {
        slug,
      },
    });
    const { postApp } = res.data;

    return {
      postApp,
      slug,
    };
  },
  head() {
    return {
      title:
        "Macclesfield Kickboxing & Brazilian Jiu Jitsu Classes | Voodoo Combat",
      meta: [
        {
          hid: "description",
          name: "description",
          content:
            "Discover top-notch Kickboxing and Brazilian Jiu Jitsu classes in Macclesfield. Our expert instructors provide dynamic training for all skill levels. Join us today!",
        },
      ],
    };
  },
};
</script>

<style scoped>
@media (max-width: 1275px) {
  img {
    max-width: 100% !important;
    width: 100%;
  }
  .hundres img {
    max-width: 100% !important;
    width: 100% !important;
    display: none;
  }
}
</style>
