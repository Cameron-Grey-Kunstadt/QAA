#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH -c 20
#SBATCH --nodes=4

mamba activate QAA

trimmomatic PE 16_3D_mbnl_S12_L008_R1_001.cut.fastq.gz \
16_3D_mbnl_S12_L008_R2_001.cut.fastq.gz \
trimmed/16_3D_mbnl_S12_L008_R1_001_paired.trim.cut.fastq.gz \
trimmed/16_3D_mbnl_S12_L008_R1_001_unpaired.trim.cut.fastq.gz \
trimmed/16_3D_mbnl_S12_L008_R2_001_paired.trim.cut.fastq.gz \
trimmed/16_3D_mbnl_S12_L008_R2_001_unpaired.trim.cut.fastq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35

trimmomatic PE 21_3G_both_S15_L008_R1_001.cut.fastq.gz \
21_3G_both_S15_L008_R2_001.cut.fastq.gz \
trimmed/21_3G_both_S15_L008_R1_001_paired.trim.cut.fastq.gz \
trimmed/21_3G_both_S15_L008_R1_001_unpaired.trim.cut.fastq.gz \
trimmed/21_3G_both_S15_L008_R2_001_paired.trim.cut.fastq.gz \
trimmed/21_3G_both_S15_L008_R2_001_unpaired.trim.cut.fastq.gz \
LEADING:3 TRAILING:3 SLIDINGWINDOW:5:15 MINLEN:35
