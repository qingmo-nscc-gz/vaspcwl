#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  step1file:
    type: File
steps:
  1:
    run: 11.cwl
    in: []
    out: [step1file]
  2:
    run: 1-2/12.cwl
    in:
      12f: 1/step1file
    out: [step2file]
  3:
    run: 1-3/13.cwl
    in: 
      1f: 2/step2file
    out: [step3file]
  4:
    run: 2-1/21.cwl
    in:
      21f: 3/step3file
    out: [step4file]
  5:
    run: 3-1/31.cwl
    in:
      31f: 4/step4file
    out: [step5file]
  6:
    run: 3-2/32.cwl
    in:
      32f: 5/step5file
    out: [step6file]
  7:
    run: 3-3/33.cwl
    in:
      33f: 6/step6file
    out: [step7file]
outputs:
  stepsfile:
    type: File
    outputSource: 7/step7file
  
