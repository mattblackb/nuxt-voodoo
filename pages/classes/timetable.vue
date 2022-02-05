<template>
 

  <v-container>
    <div >
      <PageHeader :imageurl="'/voodoo_logo.png'">
            <template v-slot:header>
                Voodoo Timetable
            </template>
      </PageHeader>
        <MainView linkType="classes" >
                 <p>Timetable for Voodoo Combat; Find out exactly when every Martial Art class, training course, development opportunity and social event takes place throughout the year and never miss one again. Click on an event and see more detail or even copy it directly to your calendar.</p>
    <iframe style="border-width: 0;" src="https://calendar.google.com/calendar/embed?mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=webape2%40gmail.com&amp;color=%2329527A&amp;ctz=Europe%2FLondon" width="800" height="600" frameborder="0" scrolling="no"></iframe>


        </MainView>

    
    </div>


  </v-container>
</template>

