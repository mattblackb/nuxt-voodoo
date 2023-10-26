<template>
  <v-container>
    <div v-if="postApp">
      <PageHeader :imageurl="checkforImage()">
        <template v-slot:header> CHILDRENS CLASSES </template>
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
            <h2>CHILDREN’S CLASSES</h2>
            <p>
              We deliver a range of classes for children to suit all possible
              needs, our focus is your child’s learning, keeping fit and active,
              building confidence, becoming bully proof and above all, HAVING
              FUN.
            </p>
            <p>
              For children from 4 to 7 years old we have the Voodoo Ninja and
              Samurai classes, these are our infant classes. For children from 8
              to 11 years old we have the Junior classes, and for the 12 to 15
              year old children we have the Cadets classes.
            </p>
            <p>
              All our coaches are First Aid trained and have been subjected to a
              Disclosure and Barring Service (DBS) check (was CRB check), we
              also have CCTV throughout our building to ensure your child’s
              safety.
            </p>
            <p>
              Please check our
              <a title="/classes/timetable/" href="/classes/timetable/"
                >Timetable</a
              >
              for the times and days of all our classes.
            </p>
            <p>
              To keep up to date with current events take a look at our&nbsp;<a
                title="/classes/events/"
                href="/classes/events/"
                >Events</a
              >&nbsp;page.
            </p>
          </div>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2 class="">NINJA'S AND SAMURAI'S</h2>
            <h4>AGES: 4 to 7 years old</h4>
          </div>
        </v-col>

        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              These classes are both the same only they take place on different
              days and times. They consist of a series of games and physical
              activities that will prepare your child for progression to any and
              all of the Junior Martial Arts programmes we deliver, described
              below. Because of their very young age the classes are kept short,
              45 minutes, and a parent or guardian is required to stay on the
              premises during the class. We pay particular attention to your
              child’s safety hence a strict requirement for them to wear a BJJ
              Gi (Brazilian Jiu Jitsu Gi) and boxing gloves. We make it as fun
              as possible while still developing physical and mental skills that
              will serve them later throughout their lives.
            </p>
            <p>
              Please check our Timetable for the times and days of all our
              classes.
            </p>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="4">
          <h4 class="nopadTop">Required Equipment</h4>
          <ul>
            <li>Flipflops or sliders</li>
            <li>A Brazilian Jiu Jitsu Gi</li>
            <li>A BJJ belt (white)</li>
            <li>Boxing Gloves</li>
            <li>Water bottle</li>
          </ul>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2 class="">BRAZILIAN JIU JITSU (BJJ)</h2>
            <h4>JUNIORS: 8 to 11 years old</h4>
            <h4 class="h4noPad">CADETS: 12 to 15 years old</h4>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              Brazilian Jiu Jitsu (BJJ) is a grappling martial art, which is
              basically wrestling while wearing a traditional Gi (Kimono type
              suit). Grapplers try to overcome their opponent by using a variety
              of holds and grips including the Gi and winning by submission,
              making thier apponent to 'tap out' (give up), by applying joint
              locks and chokes.
            </p>
            <p>
              The Junior (8 to 11 years old) and Cadets (12 to 15 years old) BJJ
              classes, from a skill perspective, are fundamentally the same as
              the adult BJJ classes. Although there are restrictions on the
              submission techniques we teach our younger students for the
              reasons of safety.
            </p>
            <p>
              Our Junior grapplers focus predominantly on good movement and
              keeping safe while wrestling allowing them development appropriate
              to their age with some live but strictly controlled sparring, or
              what is known as ‘rolling’.
            </p>
            <p>
              When they are old enough, they will be invited to the Cadets
              classes where they are taught much more like the adults focusing
              on overcoming an opponent to enhance their progression and
              development. There is more time spent live sparring / rolling with
              the aim of submitting their opponent.
            </p>
            <p>
              There is a specific grading structure for our under 16’s that
              complies with the IBJJF guidelines. When they turn 16 years old
              they will be invited to our adult class and be re-graded as an
              adult.
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
          <h4 class="nopadTop">Required Equipment</h4>
          <ul>
            <li>Flipflops or sliders</li>
            <li>A Brazilian Jiu Jitsu Gi</li>
            <li>A BJJ belt (white)</li>
            <li>Water bottle</li>
          </ul>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2 class="">KICK BOXING</h2>
            <h4>JUNIORS: 8 to 11 years old</h4>
            <h4 class="h4noPad">CADETS: 12 to 15 years old</h4>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              Kick Boxing is primarily a striking martial art which takes the
              form of punching and kicking an opponent. It is a high energy
              sport that requires a broad skills base developing self confidence
              and fitness very quickly.
            </p>
            <p>
              The Junior (8 to 11 years old) and Cadets (12 to 15 years old)
              Kick Boxing classes, from a skill perspective, are fundamentally
              the same as the adult Thai / Kick Boxing classes. Although there
              are restrictions on the techniques we teach our younger students
              for the reasons of safety.
            </p>
            <p>
              We have adopted a specific grading system for our Junior Kick
              Boxers allowing them development appropriate to their age with
              only some limited live sparring. They will be required to wear
              certain safety equipment to take part in this class; boxing
              gloves, shin guards (foam) and gumshield.
            </p>
            <p>
              When they are old enough, they will be invited to the Cadets
              classes where they will be re-graded as such and awarded the
              appropriate belt. The Cadets grading system is slightly different,
              much more like the adults with some live light contact sparring,
              to enhance their progression and development. In addition to the
              safety equipment required in the Junior class Cadets require a
              groin box (boys), hand wraps and gumsheild, thier shin guards will
              need to be upgraded to adult ones when they are taller.
            </p>
            <p>
              When they reach 16 years of age they will be invited to the adult
              classes. There are equivalent grades from Cadets to adults belts,
              but this is only a guide for our coaches. Each child will then be
              re-graded as an adult and awarded the appropriate belt.
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
          <h4 class="nopadTop">Required Equipment</h4>
          <ul>
            <li>A Gumshield</li>
            <li>Flipflops or sliders</li>
            <li>
              Thai Boxing or MMA shorts (or similar) T-shirtHand wraps (Cadets)
            </li>
            <li>Boxing gloves (Cadets minimum weight: 12oz girls 14oz boys)</li>
            <li>Shin guards (Junior, foam / Cadets, full adult type)</li>
            <li>Water bottle</li>
          </ul>
          <h4 class="marginTopPad">Other Equipment</h4>
          <ul>
            <li>Anklets</li>
            <li>Elbow Pads</li>
          </ul>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12">
          <div class="d-flex justify-center"></div>
        </v-col>
        <v-col cols="12" sm="12" md="12">
          <div>
            <h2>CHILDREN'S POINT SYSTEM</h2>

            <p>
              Discipline and rules are important and must be followed for the
              sake of everyone’s safety both in and out of the gym. It is for
              this reason we have put a points system in place to reward and to
              discipline our Ninja / Samurai, Junior and Cadet members aged less
              than 16 years old. Points can be awarded by any fully qualified or
              assistant Voodoo Coach. There are two types of points; ‘Merit’ and
              ‘Penalty’ points, positive and negative respectively.
            </p>
            <p>
              Merit points are awarded for any positive behaviour such as;
              putting in special effort, outstanding achievements and being kind
              or helpful to others. In these cases; the amount of merit points
              accumulated is added towards the hours of training required before
              the student is invited to grade. Therefore, this will result in an
              early grading opportunity.
            </p>
            <p>
              Penalty points are awarded for negative behaviour such as; not
              following rules, not having the appropriate clothing (Gi’s etc.)
              or training equipment (boxing gloves etc.), making no effort,
              being disrespectful to others or dangerous behaviour. In these
              cases; for each penalty point accumulated an additional hour of
              training will be required as well as their behaviour modified
              appropriately before the student is invited to grade. Therefore,
              this will result in a delayed grading opportunity.
            </p>
            <p>
              A Penalty point can be cancelled out by a student later gaining a
              Merit point and vice versa.
            </p>
            <p>
              Any points awarded will be recorded on the students training
              record and parent/s informed.
            </p>
            <p>
              A student’s points records are restarted at zero as a grading
              takes place.
            </p>
            If a child is sat out of class for misbehaviour, this will result in
            an immediate Penalty point being awarded. If they are invited to
            re-join the class and are sat out a second time, a second Penalty
            point will be awarded, and they will not be allowed back in that
            class for that day.
            <p>
              On accumulating 10 penalty points before their next grading a
              student may have their membership of Voodoo Combat revoked and all
              grades and promotions gained will be removed from our records.
            </p>
            <p>
              For the safety of all our members, this system can be circumvented
              at any time by our coaches. In the case of a serious offence such
              as bullying inside or outside the gym, or wilfully refusing to act
              upon instruction from Voodoo coach/es that results in a risk to
              others, a student will be asked to leave immediately, and parents
              informed.
            </p>
          </div>
        </v-col>
      </v-row>

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
