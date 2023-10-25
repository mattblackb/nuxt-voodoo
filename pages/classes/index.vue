<template>
  <v-container>
    <div v-if="postApp">
      <PageHeader :imageurl="checkforImage()">
        <template v-slot:header>
          {{ postApp.title }}
        </template>
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
          <div class="d-flex justify-center">
            <h2 class="">CHILDREN's TRAINING</h2>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              We train children from just 4 years of age with fully qualified
              coaches that are all first aid trained and have been subjected to
              an enhanced DBS check. We also have CCTV in operation throughout
              the gym for your children's safety.
            </p>
            <p>
              Our infant classes, Ninjas and Samurais are for 4 to 7 years olds,
              our Juniour classes are for 8 to 11 years olds and our Cadet
              classes are for 12 to 15 years olds. This way your child trains
              within their natural age group and can see their progression.
              <a
                title="Voodoo Children's Classes"
                href="/classes/childrens-classes/"
                >Take a look here!</a
              >
            </p>
            <p>
              They have the opportunity to learn Brazilian Jiu Jitsu (BJJ),
              Kickboxing or a combination of both these time-tested Martial
              Arts. And if they change their mind, fine, let us know, we can
              simply change the programme they are on.
            </p>
            <p>
              We don't do contracts at Voodoo, so you're not tied into anything.
              Just email us 10 working days before your payment is due so we can
              cancel it in plenty of time.
            </p>
            <p>
              Our gym is the best equipped of its kind with a coaching team
              others can only dream of.
            </p>
            <p>
              In short, there is no better place for your child to become fit
              and healthy as well as bully proof while having fun.
            </p>
          </div>
        </v-col>

        <v-col cols="12" sm="12" md="4">
          <v-img src="kids.jpg" cover max-height="425"></v-img>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="d-flex justify-center">
            <h2 class="">ADULT TRAINING</h2>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="4">
          <v-img src="adults.jpeg" cover max-height="425"></v-img>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              We have two adult programmes to choose from; our
              <a
                title="Grappling Programme"
                href="/classes/grappling-programme/"
                >'Grappling Programme'</a
              >
              and our
              <a title="Striking Programme" href="/classes/kickboxing/"
                >'Striking Programme'</a
              >. You might wish to train in one or both programmes. If you're an
              absolute beginner, our 'Foundation' classes are tailored exactly
              for your needs. If you've trained before and would like to get
              back into it, or would like to try a new style, we can do that
              too. If you're an experienced fighter our 'Advanced' classes are
              for you.
            </p>
            <p>
              No matter what you need in combat sports we are the people that
              can help. Drop us a line at voodooservices@gmail.com, or come in
              on one of our inductions to take a look around and ask questions,
              no need to book.
            </p>
          </div>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="d-flex justify-center">
            <h2 class="">PERSONAL TRAINING</h2>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              Personal one to one and small group training is available by
              appointment. Personal training in any of the martial arts listed
              above is delivered by highly qualified and experienced coaches.
            </p>
            <p>
              Bespoke fitness and conditioning as well as nutritional advice is
              delivered by our REPs Level 4 Personal Trainer, specialising in
              diabetes and obesity.
            </p>
            <p>We can cater for any of your health and development needs.</p>
            <p>
              For more information visit out&nbsp;<a
                title="Voodoo Personal Training"
                href="https://voodoogym.co.uk/classes/personal-training/"
                >Personal Training</a
              >
              page.
            </p>
            <p>
              Please check our&nbsp;<a
                title="Voodoo Timetable"
                href="/classes/timetable/"
                >Timetable</a
              >
              for the times and days of all our classes.<br />
            </p>
          </div>
        </v-col>

        <v-col cols="12" sm="12" md="4">
          <v-img src="kids.jpg" cover max-height="425"></v-img>
        </v-col>
      </v-row>

      <p></p>

      <!-- <MainViewsplit linkType="classes" v-else>
        <template v-slot:left>
          <div v-html="removeVoodoo(postApp.postDetails.html)"></div>
        </template>
        <template v-slot:right>
          <div v-html="removeVoodoo(postApp.postDetails2.html)"></div>
        </template>
      </MainViewsplit> -->
    </div>
  </v-container>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";

export default {
  data: () => ({
    loading: 0,
    currentitem: null,
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
  async asyncData({ app, params }) {
    const client = app.apolloProvider.defaultClient;
    const slug = "classes";
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
      title: this.postApp.metaTitle,
      meta: [
        {
          hid: "description",
          name: "description",
          content: this.postApp.metaDescription,
        },
      ],
    };
  },
};
</script>

<style>
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
h2,
b {
  color: #f06d2f;
}
</style>
