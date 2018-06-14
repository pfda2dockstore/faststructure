baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: faststructure
inputs:
  input_bed:
    doc: PLINK binary genotype file with samples you want to analyze
    inputBinding:
      position: 1
      prefix: --input_bed
    type: File
  input_bim:
    doc: PLINK binary format marker definition file
    inputBinding:
      position: 4
      prefix: --input_bim
    type: File
  input_fam:
    doc: PLINK binary format sample definition file
    inputBinding:
      position: 3
      prefix: --input_fam
    type: File
  n_subpops:
    default: 3
    doc: Number of subpopulations expected in the data
    inputBinding:
      position: 2
      prefix: --n_subpops
    type: long
label: fastSTRUCTURE Global Ancestry Analysis
outputs:
  p_output_fname:
    doc: ''
    outputBinding:
      glob: p_output_fname/*
    type: File
  q_output_fname:
    doc: This output file contains the posterior mean proportion of each sample's
      genome originating from each subpopulation
    outputBinding:
      glob: q_output_fname/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/faststructure:15
s:author:
  class: s:Person
  s:name: Mark Wright
