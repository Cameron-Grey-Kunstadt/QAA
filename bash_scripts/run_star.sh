#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=100G

mamba activate QAA

/usr/bin/time -v STAR --runThreadN 8 --runMode genomeGenerate \
--genomeDir /projects/bgmp/camk/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.ens112.STAR_2.7.11b \
--genomeFastaFiles /projects/bgmp/camk/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.primary_assembly.fa \
--sjdbGTFfile /projects/bgmp/camk/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.112.gtf
