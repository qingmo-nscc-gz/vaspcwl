#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: []
requirements:
  SubworkflowFeatureRequirement: {}
steps:
  GeometryOptimization:
    run: 11.cwl
    in: []
    out: [step1file]
  ElasticProperties:
    run: 1-2/12.cwl
    in:
      12f: GeometryOptimization/step1file
    out: [step1file]
  MagneticProperties:
    run: 1-2/1-3/13.cwl
    in: 
      1f: GeometryOptimization/step1file
    out: [step1file]
  StaticCalculation:
    run: 1-2/1-3/2-1/21.cwl
    in:
      21f: GeometryOptimization/step1file
    out: [step1file]
  BandStructure:
    run: 1-2/1-3/2-1/3-1/31.cwl
    in:
      31f: StaticCalculation/step1file
    out: [step1file]
  DensityOfStates:
    run: 1-2/1-3/2-1/3-1/3-2/32.cwl
    in:
      32f: StaticCalculation/step1file
    out: [step1file]
  OpticalProperties:
    run: 1-2/1-3/2-1/3-1/3-2/3-3/33.cwl
    in:
      33f: StaticCalculation/step1file
    out: [step1file]
outputs:
  stepsfile:
    type: File[]
    outputSource: [BandStructure/step1file, DensityOfStates/step1file, OpticalProperties/step1file]
  
