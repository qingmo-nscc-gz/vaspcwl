#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/1-2/check2.sh] 
inputs: 
  120f:
    type: File
outputs:
  ch2:
    type: stdout
stdout: ch2.txt
  
