#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs:
  step1file:
    type: File
steps:
  step1:
    run: 11.cwl
    in: []
    out: [step1file]
  step2:
    run: 1-2/12.cwl
    in:
      12f: step1/step1file
    out: [step2file]
  step3:
    run: 1-2/1-3/13.cwl
    in: 
      1f: step2/step2file
    out: [step3file]
  step4:
    run: 1-2/1-3/2-1/21.cwl
    in:
      21f: step3/step3file
    out: [step4file]
  step5:
    run: 1-2/1-3/2-1/3-1/31.cwl
    in:
      31f: step4/step4file
    out: [step5file]
  step6:
    run: 1-2/1-3/2-1/3-1/3-2/32.cwl
    in:
      32f: step5/step5file
    out: [step6file]
  step7:
    run: 1-2/1-3/2-1/3-1/3-2/3-3/33.cwl
    in:
      33f: step6/step6file
    out: [step7file]
outputs:
  stepsfile:
    type: File
    outputSource: step7/step7file
  
