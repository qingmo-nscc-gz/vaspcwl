#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: 
  INCAR:
    type: File
  POSCAR:
    type: File
  POTCAR:
    type: File
  KPOINTS:
    type: File
requirements:
  SubworkflowFeatureRequirement: {}
steps:
  GeometryOptimization:
    run: 11.cwl
    in:
      INCAR: INCAR
      POSCAR: POSCAR
      POTCAR: POTCAR
      KPOINTS: KPOINTS
    out: [step1file]
  ElasticProperties:
    run: 1-2/12.cwl
    in:
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
  MagneticProperties:
    run: 1-2/1-3/13.cwl
    in: 
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
  StaticCalculation:
    run: 1-2/1-3/2-1/21.cwl
    in:
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
  BandStructure:
    run: 1-2/1-3/2-1/3-1/31.cwl
    in:
      CONTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
  DensityOfStates:
    run: 1-2/1-3/2-1/3-1/3-2/32.cwl
    in:
      CONTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
  OpticalProperties:
    run: 1-2/1-3/2-1/3-1/3-2/3-3/33.cwl
    in:
      CONTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file
      INCAR: {default: INCAR}
      KPOINTS: {default: KPOINTS}
    out: [step1file]
outputs:
  OUTPUT:
    type: File[]
    outputSource: [MagneticProperties/step1file, ElasticProperties/step1file, BandStructure/step1file, DensityOfStates/step1file, OpticalProperties/step1file]
  
