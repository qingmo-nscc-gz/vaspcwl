#!/usr/bin/env cwl-runner

cwlVersion: v1.0
class: CommandLineTool
baseCommand: [cp, /WORK/nscc-gz_material_4/vasp/1-1/3-3.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-30.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-31.cwl, /WORK/nscc-gz_material_4/vasp/1-1/3-32.cwl,/WORK/nscc-gz_material_4/vasp/1-1/33.cwl,/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/INCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/CONTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/POTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/KPOINTS,/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/CHG, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/CHGCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/CONTCAR, /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/WAVECAR,/WORK/nscc-gz_material_4/vasp/1-1/run_vasp7.sh, /WORK/nscc-gz_material_4/vasp/1-1/check7.sh]
arguments: [/WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/3-1/3-2/3-3]
inputs:
  cpf1:
    type: File
  cpf2:
    type: File
  cpf3:
    type: File
outputs: 
  cp5:
    type: stdout
stdout: cp6.txt 
  
