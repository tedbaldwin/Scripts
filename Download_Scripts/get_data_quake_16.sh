
#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-launch-output.txt
#BSUB -e data-launch-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N

cd /scratch/cluster/monthly/rbaldwin

wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034026/SRR1034026.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034027/SRR1034027.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034028/SRR1034028.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034029/SRR1034029.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034030/SRR1034030.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034031/SRR1034031.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034032/SRR1034032.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034033/SRR1034033.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034034/SRR1034034.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034035/SRR1034035.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034036/SRR1034036.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1034037/SRR1034037.sra 