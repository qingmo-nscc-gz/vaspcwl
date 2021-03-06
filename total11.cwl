#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: Workflow
inputs: 
  INPUT:
    type: File
requirements:
  SubworkflowFeatureRequirement: {}
steps:
  GeometryOptimization:
    run: 11.cwl
    in:
      INCAR: MagneticTesting/step1file
      POSCAR: MagneticTesting/step1file
      POTCAR: MagneticTesting/step1file
      CONTCAR: MagneticTesting/step1file
      POTCAR: MagneticTesting/step1file
    out: [step1file]

  MagneticTesting:
    run: 1-2/1-3/13.cwl
    in: 
      INCAR: INPUT
      POSCAR: INPUT
      POTCAR: INPUT
      KPOINTS: INPUT
    out: [step1file]

  ElasticCalculation:
    run: 1-2/12.cwl
    in:
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      
    out: [step1file]
  ElasticProperties:
    run: 1-2/122.cwl
    in:
      OUTCAR: ElasticCalculation/step1file
    out: [yh2]

  MagneticCalculation:
    run: 1-2/1-3/13.cwl
    in: 
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      MagneticTesting: MagneticTesting/step1file
    out: [step1file]
  MagneticProperties:
    run: 1-2/1-3/133.cwl
    in: 
      OUTCAR: MagneticCalculation/step1file
    out: [yh3]
  StaticCalculation:
    run: 1-2/1-3/2-1/21.cwl
    in:
      CONTCAR: GeometryOptimization/step1file
      POTCAR: GeometryOptimization/step1file
      MagneticTesting: MagneticTesting/step1file
    out: [step1file]
  BandStructureCalculation:
    run: 1-2/1-3/2-1/3-1/31.cwl
    in:
      CONTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file
      
    out: [step1file]
  BandStructure:
    run: 1-2/1-3/2-1/3-1/311.cwl
    in:
      DOSCAR: BandStructureCalculation/step1file
      EIGENVAL: BandStructureCalculation/step1file
      KPOINTS: BandStructureCalculation/step1file
    out: [yh5]
  DensityOfStatesCalculation:
    run: 1-2/1-3/2-1/3-1/3-2/32.cwl
    in:
      CONTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file
      
    out: [step1file]
  DensityOfStates:
    run: 1-2/1-3/2-1/3-1/3-2/322.cwl
    in:
      DOSCAR: DensityOfStatesCalculation/step1file
    out: [yh6]
  OpticalCalculation:
    run: 1-2/1-3/2-1/3-1/3-2/3-3/33.cwl
    in:
      OUTCAR: StaticCalculation/step1file
      POTCAR: StaticCalculation/step1file

    out: [step1file]
  OpticalProperties:
    run: 1-2/1-3/2-1/3-1/3-2/3-3/333.cwl
    in:
      OUTCAR: OpticalCalculation/step1file
      runvasp.xml: OpticalCalculation/step1file
    out: [yh7]
outputs:
  OUTPUT:
    type: File[]
    outputSource: [MagneticProperties/yh3, ElasticProperties/yh2, BandStructure/yh5, DensityOfStates/yh6, OpticalProperties/yh7]
  
