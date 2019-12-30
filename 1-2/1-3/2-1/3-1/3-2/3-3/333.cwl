#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [ssh, ln1, yhbatch]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/3-3/run_vasp7.sh, -N, "1"]
inputs: []
outputs:
  yh7:
    type: stdout
stdout: yh7.txt
  
