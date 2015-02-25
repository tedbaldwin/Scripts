
#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-launch-output.txt
#BSUB -e data-launch-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N

cd /scratch/cluster/monthly/rbaldwin


wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033909/SRR1033909.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033910/SRR1033910.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033911/SRR1033911.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033912/SRR1033912.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033913/SRR1033913.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033914/SRR1033914.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033915/SRR1033915.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033916/SRR1033916.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033917/SRR1033917.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033918/SRR1033918.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033919/SRR1033919.sra 