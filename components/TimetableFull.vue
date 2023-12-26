<template>
  <v-container>
    <v-row>
      <!-- <v-col cols="12">
          <h4>Filters</h4>
        </v-col> -->
      <v-col cols="12">
        Filter:
        <v-btn @click="GetResetData()">Reset</v-btn>
        <v-btn @click="ShowJustStriking()">Show Striking</v-btn>
        <v-btn @click="ShowJustGrappling()">Show Grapling</v-btn>
      </v-col>
    </v-row>
    <v-row>
      <v-col cols="12" md="6" sm="12">
        <h2>Adult Classes</h2>

        <!-- loop around this.adultClasses -->
        <div v-for="item in adultClasses" :key="item.day">
          <h3 :class="checkToday(item.day)">{{ item.day }}</h3>

          <div
            v-for="classItem in orderClassArray(item.classes)"
            :key="classItem.Title"
          >
            <div :class="isStriking(classItem.striking)">
              <div class="time">
                {{ classItem.startTime }} - {{ classItem.endTime }}
                {{ ifAMReturnAM(classItem.am) }}
              </div>
              <div class="titleTime">{{ classItem.Title }}</div>
              <!-- {{ classItem.Title }} | {{ classItem.startTime }} -
                {{ classItem.endTime }}  -->
            </div>
          </div>
        </div>
      </v-col>

      <v-col cols="12" md="6" sm="12">
        <h2>Kids Classes</h2>
        <div v-for="item in kidsClasses" :key="item.day">
          <h3 :class="checkToday(item.day)">{{ item.day }}</h3>

          <div
            v-for="classItem in orderClassArray(item.classes)"
            :key="classItem.Title"
          >
            <div :class="isKids(classItem.age)">
              <div class="time">
                {{ classItem.startTime }} - {{ classItem.endTime }}
                {{ ifAMReturnAM(classItem.am) }}
              </div>
              <div class="titleTime">{{ classItem.Title }}</div>
            </div>
          </div>
        </div>
        <div class="key">
          <h3>Key</h3>
          <div>Striking Adults 16+<span class="rectKey Striking"></span></div>
          <div>Grappling Adults 16+<span class="rectKey Grappling"></span></div>
          <div>Ninjas 4 to 7 years<span class="rectKey ninja"></span></div>
          <div>Juniors 8 till 11 years<span class="rectKey junior"></span></div>
          <div class="">
            Cadets 12 to 15 years <span class="rectKey cadet"></span>
          </div>
        </div>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
import GET_SINGLE_POSTS from "~/queries/singlepost.gql";
import json from "~/static/timetable_new.json";
import jsonKids from "~/static/timetablekids_new.json";
export default {
  props: {
    adultClassesProp: {
      type: Object,
      // default: () => (this.json ? this.json.adult.classes : []),
    },
    kidsClassesProp: {
      type: Object,
      // default: () => (this.jsonkids ? this.jsonkids.kids.classes : []),
    },
  },
  data: () => ({
    loading: 0,
    currentitem: null,
    json,
    adultClasses: [],
    jsonKids,
    kidsClasses: [],
  }),

  methods: {
    checkToday(day) {
      var d = new Date();
      var n = d.toLocaleDateString("gb-GB", { weekday: "long" });
      if (n === day) {
        return "today";
      }
    },
    removeStriking(arr) {
      arr = arr.filter((obj) => obj.striking);
      return arr;
    },
    ShowJustStriking() {
      this.GetResetData();
      this.adultClasses.forEach((item) => {
        item.classes = this.removeStriking(item.classes);
      });
      this.kidsClasses.forEach((item) => {
        item.classes = this.removeStriking(item.classes);
      });
    },
    removeGrappling(arr) {
      arr = arr.filter((obj) => !obj.striking);
      return arr;
    },
    ShowJustGrappling() {
      this.GetResetData();
      this.adultClasses.forEach((item) => {
        item.classes = this.removeGrappling(item.classes);
      });
      this.kidsClasses.forEach((item) => {
        item.classes = this.removeGrappling(item.classes);
      });
    },
    removeVoodoo(string) {
      var find = "http://voodoogym.co.uk/";
      var re = new RegExp(find, "g");
      var str = string.replace(re, "");

      return str;
    },
    isKids(string) {
      return string;
    },
    isStriking(bool) {
      if (bool) {
        return "Striking";
      } else {
        return "Grappling";
      }
    },
    ifAMReturnAM(bool) {
      if (bool) {
        return "AM";
      } else {
        return "PM";
      }
    },
    orderClassArray(ClassArr) {
      //order class array by am then order by start time
      var classesReturn = [];
      for (let i = 0; i < ClassArr.length; i++) {
        //Always push am to the front
        if (ClassArr[i].am == true) {
          classesReturn.unshift(ClassArr[i]);
        } else {
          classesReturn.push(ClassArr[i]);
        }
      }

      //order by start time
      classesReturn.sort(function (a, b) {
        return a.start - b.start;
      });
      return classesReturn;
    },
    checkforImage() {
      if (this.postApp.mainheaderImage) {
        return this.postApp.mainheaderImage.url;
      } else {
        return "/voodoo_logo.png";
      }
    },
    GetResetData() {
      if (this.adultClassesProp) {
        var adultClasses = this.adultClassesProp.adult.classes;
      } else {
        var adultClasses = this.json.adult.classes;
      }

      const result = [];
      const days = [];

      adultClasses.forEach((obj) => {
        const day = obj.day;

        if (!days.includes(day)) {
          days.push(day);
          result.push({ day: day, classes: [] });
        }

        const index = days.indexOf(day);
        result[index].classes.push(obj);
      });

      this.adultClasses = result;
      if (this.kidsClassesProp) {
        var kidsClasses = this.kidsClassesProp.kids.classes;
      } else {
        var kidsClasses = this.jsonKids.kids.classes;
      }

      const resultkids = [];
      const dayskids = [];

      kidsClasses.forEach((obj) => {
        const day = obj.day;

        if (!dayskids.includes(day)) {
          dayskids.push(day);
          resultkids.push({ day: day, classes: [] });
        }

        const index = dayskids.indexOf(day);
        resultkids[index].classes.push(obj);
      });

      this.kidsClasses = resultkids;
      console.log(this.kidsClasses);
    },
  },

  beforeMount() {
    //for each class in adult classes group by day
    //for each day create a new object
    this.GetResetData();
  },
  head() {
    return {
      title: "Kickboxing Macclesfield | Timetable",
      meta: [
        {
          hid: "description",
          name: "description",
          content: "Kickboxing Macclesfield | Timetable",
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
.maintext img {
  max-width: 100%;
  height: auto;
}
h2,
b {
  color: #f06d2f;
}
.Striking {
  background-color: #db845b;
}
.Grappling {
  background-color: #5b8edb;
}
.ninja {
  background-color: rgb(130, 185, 162);
}
.junior {
  background-color: rgb(185, 130, 130);
}
.cadet {
  background-color: rgb(185, 130, 185);
}
.time,
.titleTime {
  padding: 0px 1rem;
}
.time {
  border-top: 2px solid black;
}
.titleTime {
  font-weight: bold;
  padding-bottom: 3px;
}
/* .ninja {
  color: green;
}
.junior {
  color: blue;
}
.cadet {
  color: orange;
} */
.rectKey {
  width: 10px;
  height: 10px;
  display: inline-block;
  margin-left: 5px;
}
.today {
  color: #f06d2f;
}
</style>
