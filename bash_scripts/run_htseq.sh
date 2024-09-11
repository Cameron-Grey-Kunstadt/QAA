#!/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mem=100G

mamba activate QAA


htseq-count 16_3D_mbnl_S12_L008_Aligned.out.sam Mus_musculus.GRCm39.112.gtf --stranded=yes > 16_3D_mbnl_S12_L008.strand.txt



htseq-count 16_3D_mbnl_S12_L008_Aligned.out.sam Mus_musculus.GRCm39.112.gtf --stranded=reverse > 16_3D_mbnl_S12_L008.rev.txt


htseq-count 21_3G_both_S15_L008_Aligned.out.sam Mus_musculus.GRCm39.112.gtf --stranded=yes > 21_3G_both_S15_L008.strand.txt


htseq-count 21_3G_both_S15_L008_Aligned.out.sam Mus_musculus.GRCm39.112.gtf --stranded=reverse > 21_3G_both_S15_L008.rev.txt
