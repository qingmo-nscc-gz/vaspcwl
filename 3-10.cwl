#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/check5.sh] 
inputs: 
  310f:
    type: File
outputs:
  ch5:
    type: stdout
stdout: ch5.txt
  
