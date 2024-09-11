#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH -c 10
#SBATCH --nodes=1

mamba activate QAA

/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/camk/bioinfo/Bi623/QAA/trimmed/16_3D_mbnl_S12_L008_R1_001_paired.trim.cut.fastq.gz /projects/bgmp/camk/bioinfo/Bi623/QAA/trimmed/16_3D_mbnl_S12_L008_R2_001_paired.trim.cut.fastq.gz \
--genomeDir /projects/bgmp/camk/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.ens112.STAR_2.7.11b \
--outFileNamePrefix 16_3D_mbnl_S12_L008_


/usr/bin/time -v STAR --runThreadN 8 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/camk/bioinfo/Bi623/QAA/trimmed/21_3G_both_S15_L008_R1_001_paired.trim.cut.fastq.gz /projects/bgmp/camk/bioinfo/Bi623/QAA/trimmed/21_3G_both_S15_L008_R2_001_paired.trim.cut.fastq.gz \
--genomeDir /projects/bgmp/camk/bioinfo/Bi623/QAA/Mus_musculus.GRCm39.dna.ens112.STAR_2.7.11b \
--outFileNamePrefix 21_3G_both_S15_L008_

