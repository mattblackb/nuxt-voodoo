<template>
  <v-expansion-panels accordion>
    <v-expansion-panel>
      <v-expansion-panel-header>
        <slot name="header1"></slot>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <slot name="content1"></slot>
      </v-expansion-panel-content>
    </v-expansion-panel>

    <v-expansion-panel>
      <v-expansion-panel-header>
        <slot name="header2"></slot>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <slot name="content2"></slot>
      </v-expansion-panel-content>
    </v-expansion-panel>

    <v-expansion-panel>
      <v-expansion-panel-header>
        <slot name="header3"></slot>
      </v-expansion-panel-header>
      <v-expansion-panel-content>
        <slot name="content3"></slot>
      </v-expansion-panel-content>
    </v-expansion-panel>
  </v-expansion-panels>
</template>
