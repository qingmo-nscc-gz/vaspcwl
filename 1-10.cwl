#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/check.sh] 
inputs:
  10f:
    type: File
outputs:
  ch1:
    type: stdout
stdout: ch1.txt
  
