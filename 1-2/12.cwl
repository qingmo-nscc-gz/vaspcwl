#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
steps:
  yh1:
    run: 1-2.cwl
    in: []
    out: [yh2]
  mk1:
    run: 1-21.cwl
    in: []
    out: [mk2]
  check1:
    run: 1-20.cwl
    in: 
      120f: yh1/yh2
    out: [ch2]
  cp1:
    run: 1-22.cwl
    in:
      cpf1: yh1/yh2
      cpf2: mk1/mk2
      cpf3: check1/ch2
    out: [cp2]
outputs:
  step1file:
    type: File
    outputSource: cp1/cp2
  
