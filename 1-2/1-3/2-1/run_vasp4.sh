#!/bin/sh
exe_dir=/WORK/app/condor/bin_5.4.1/
source /WORK/app/toolshs/cnmodule.sh
module load intel-compilers/15.0.1
#export SLURM_STEP_KILLED_MSG_NODE_ID=0
#export SLURM_DISTRIBUTION=block:block
#export SLURM_EXCLUSIVE=1
#export SLURM_SRUN_REDUCE_TASK_EXIT_MSG=1
cd  /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1
#echo "$PWD" > log2
yhrun -p work -N 1 -n 24  ${exe_dir}/vasp_std >> /WORK/nscc-gz_material_4/vasp/1-1/1-2/1-3/2-1/log2
#file='/WORK/nscc-gz_material_4/vasp/1-1/log2'
#while [ ! -f "$file" ]; do
#  file='/WORK/nscc-gz_material_4/vasp/1-1/log2'
#  echo $int
#  int=$(($int+1))
#done
#mkdir /WORK/nscc-gz_material_4/vasp/1-2
#cp /WORK/nscc-gz_material_4/vasp/1-1/INCAR /WORK/nscc-gz_material_4/vasp/1-1/POSCAR /WORK/nscc-gz_material_4/vasp/1-1/POTCAR /WORK/nscc-gz_material_4/vasp/1-1/KPOINTS /WORK/nscc-gz_material_4/vasp/1-1/run_vasp.sh /WORK/nscc-gz_material_4/vasp/1-2
