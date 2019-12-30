#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [sh, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/3-3/check7.sh] 
inputs: 
  330f:
    type: File
outputs:
  ch7:
    type: stdout
stdout: ch7.txt
  
