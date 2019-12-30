#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [ssh, ln1]
arguments: []
inputs: []
outputs:
  yh5:
    type: stdout
stdout: yh5.txt
  
