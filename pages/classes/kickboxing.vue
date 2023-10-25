<template>
  <v-container>
    <div v-if="postApp">
      <PageHeader :imageurl="checkforImage()">
        <template v-slot:header> Striking Programme </template>
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
        <v-col cols="12" sm="12" md="12">
          <div>
            <h2>Striking Programme</h2>
            <p>
              Our ‘Striking Programme’ consists of Thai / Kickboxing and Boxing
              (for Thai / Kick Boxing), described in more detail below. That’s a
              lot of training each week to choose from! As you can see this
              highly popular programme includes all things striking but does not
              cover the techniques in the Grappling Programme that we deliver.
            </p>
          </div>
        </v-col>
      </v-row>

      <v-row class="mt-2">
        <v-col cols="12" sm="12" md="6">
          <h2 class="">Foundation CLASSES</h2>
          <div>
            <p>Never trained in a striking combat sport before?</p>
            <p>
              Don’t panic; to ease you into things we have a ‘Foundation Thai /
              Kickboxing' available. This consists of two 60 minute technical
              classes covering all aspects of 'Thai / Kick Boxing' and a 90
              minute 'Competition' class each week, as well as having access to
              the morning open mat classes. You’ll gain the fundamental skills
              to ensure you get the utmost from the full programme and feel like
              one of the family. In good time, you will gain the skill and
              confidence to move to the 'Advance Striking Programme'. We will
              let you know when you are ready.
            </p>
            <p>
              <b>
                <i>
                  Level of experience: Never trained before or less than 18
                  months of consistent Muay Thai training or lower than green
                  belt in Kickboxing.
                </i>
              </b>
            </p>
          </div>
        </v-col>

        <v-col cols="12" sm="12" md="6">
          <h2 class="">Advanced CLASSES</h2>
          <div>
            <p>
              When you are ready, you will gain access to the 'Advanced Striking
              Programme' which consists of two 60 minute 'Thai / Kick Boxing
              Classes', followed by two optional 30 minute 'Sparring' classes,
              two 60 minute 'Boxing' (for Thai / Kick Boxing) classes, and a 90
              minute 'Competition' class each week, as well as the morning open
              mats sessions. If you have already gained the required experience
              elsewhere we will allow you diectly onto this programme. However,
              we advise you contact us first by email at voodooservice@gmail.com
              to verify your level of experience.
            </p>
            <p>
              <b>
                <i>
                  Level of experience: Experienced is over 18 months of
                  consistent Muay Thai training or a minimum of green belt in
                  Kickboxing.
                </i>
              </b>
            </p>
          </div>
        </v-col>
      </v-row>
      <hr />
      <v-row class="mt-2">
        <v-col cols="12">
          <div class="">
            <h2 class="">Thai / Kickboxing</h2>
          </div>
        </v-col>
        <v-col cols="12" sm="12" md="8">
          <div>
            <p>
              Thai Boxing and Kickboxing are striking arts involving punching,
              kicking, elbow and knee strikes as well as clinch work. We combine
              the very best of both these sports at Voodoo so you have a
              comprehensive striking style. We utilise a variety of safety
              equipment that your coach can advise you upon if you require.
            </p>
            <p>
              Not only does Kickboxing provide fighters with a sense of
              confidence and vigour, it’s also a great way for gym newcomers to
              increase stamina and transform, shedding fat and developing lean
              muscle.
            </p>
            <p>
              There are always opportunities to compete if you wish to test your
              skills in the ultimate arena under a variety of rule sets
              including Muay Thai classes A, B and C, K1 and other Full Contact
              Kickboxing rulesets.
            </p>
          </div>
        </v-col>

        <v-col cols="12" sm="12" md="4">
          <h4 class="nopadTop">Required Equipment</h4>
          <ul>
            <li><div>Gumshield</div></li>
            <li><div>Flipflops or sliders</div></li>
            <li><div>Thai Boxing or MMA shorts</div></li>
            <li><div>T-shirt</div></li>
            <li><div>Hand wraps</div></li>
            <li>
              <div>
                Boxing gloves - leather, minimum weight: 12oz women 14oz men
              </div>
            </li>
            <li><div>Shin guards</div></li>
            <li><div>Water bottle</div></li>
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
h2,
b {
  color: #f06d2f;
}
</style>
