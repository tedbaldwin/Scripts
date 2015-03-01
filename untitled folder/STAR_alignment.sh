#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-StarAlignement_Treutlein_Quake-output.txt 
#BSUB -e data-StarAlignement_Treutlein_Quake-error.txt
#BSUB -J Data_StarAlignement_Treutlein_Quake
#BSUB -N
#BSUB -n 8
#BSUB -R "span[ptile=8]"
#BSUB –R "rusage[mem=7812.5]"
#BSUB -M 8000000
#BSUB -f "/archive/.../file1.seq > /scratch/cluster/.../file1.seq"

/home/rbaldwin/archive/Treutlein_Quake_Nature_2014_data_fastq/Treutlein_Quake_Nature_2014_fastq #Path to fastq data

module add UHTS/Analysis/samtools/1.1;

REF= /PATH/ #Genome
GENDIR = /PATH #Genome output directory


STAR  --runMode genomeGenerate --runThreadN 8 --genomeDir $GENDIR --genomeFastaFiles $REF

STAR --genomeDir $GENDIR  --runThreadN 8 --readFilesIn $FQZ1 $FQZ2 --outFileNamePrefix Experiment1Star


for FQZ1 in SR*_1.fastq
do
FQZ2=`echo $FQZ1 | sed 's/_1/_2/'`
BASE=`echo $FQZ1 | cut -d '_' -f1`

bowtie -a —best —strata -S -m 100 - X 500 -chunkmbs 256 -p 8 $REF  -1 $FQZ1 -2 $FQZ2 | samtools view -F 0xC -bS - | samtools sort -n - ${outpath}${BASE}_bowtie

samtools index ${outpath}${BASE}_bowtie.bam
samtools flagstat ${outpath}${BASE}_bowtie.bam ${outpath}${BASE}_bowtie.stats


bowtie -a --best --strata -S -m 100 -X 500 --chunkmbs 256  -p 8 --al ${BASE}_bowtie $REF -1 $FQZ1 -2 $FQZ2 
samtools index ${BASE}_bowtie/accepted_hits.bam
samtools flagstat ${BASE}_bowtie/accepted_hits.bam \
> ${BASE}_bowtie/accepted_hits.bam.stats )



done

