#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-BowtieAlignement_Treutlein_Quake-output.txt 
#BSUB -e data-BowtieAlignement_Treutlein_Quake-error.txt
#BSUB -J Data_BowtieAlignement_Treutlein_Quake
#BSUB -N
#BSUB -n 8
#BSUB -R "span[ptile=8]"
#BSUB –R "rusage[mem=7812.5]"
#BSUB -M 8000000
#BSUB -f "/archive/.../file1.seq > /scratch/cluster/.../file1.seq"

cd /home/rbaldwin/archive/Treutlein_Quake_Nature_2014_data_fastq/Treutlein_Quake_Nature_2014_fastq #Path to fastq data

module add UHTS/Aligner/bowtie/0.12.9;
module add UHTS/Analysis/samtools/1.1;

REF=/home/rbaldwin/archive/Ref_Genome_Transcriptome_Treutlein_Quake_Nature_2014/Mus_musculus.GRCm38.75.mmseq.spiked-tdRFP-GFP.fa

bowtie-build --offrate 2 $REF $REF

for FQZ1 in SR*_1.fastq
do
FQZ2=`echo $FQZ1 | sed 's/_1/_2/'`
BASE=`echo $FQZ1 | cut -d '_' -f1`

bowtie -a —best —strata -S -m 100 - X 500 -chunkmbs 256 -p 8 $REF  -1 $FQZ1 -2 $FQZ2 | samtools view -F 0xC -bS - | samtools sort -n - ${outpath}${BASE}_bowtie

samtools index ${outpath}${BASE}_bowtie.bam
samtools flagstat ${outpath}${BASE}_bowtie.bam ${outpath}${BASE}_bowtie.stats


bowtie -a --best --strata -S -m 100 -X 500 --chunkmbs 256  -p 32 --al ${BASE}_bowtie $REF -1 $FQZ1 -2 $FQZ2 
samtools index ${BASE}_bowtie/accepted_hits.bam
samtools flagstat ${BASE}_bowtie/accepted_hits.bam \
> ${BASE}_bowtie/accepted_hits.bam.stats )



done

