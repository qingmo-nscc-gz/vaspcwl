#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [ssh, ln1, yhbatch]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/run_vasp2.sh, -N, "1"]
inputs: []
outputs:
  yh2:
    type: stdout
stdout: yh2.txt
  
