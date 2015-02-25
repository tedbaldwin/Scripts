
#!/bin/bash

#BSUB -L /bin/bash
#BSUB -o data-launch-output.txt
#BSUB -e data-launch-error.txt
#BSUB -J Data_dwnld_Treutlein_Quake
#BSUB -N

cd /scratch/cluster/monthly/rbaldwin


wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033978/SRR1033978.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033979/SRR1033979.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033980/SRR1033980.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033981/SRR1033981.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033982/SRR1033982.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033983/SRR1033983.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033984/SRR1033984.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033985/SRR1033985.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033986/SRR1033986.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033987/SRR1033987.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033988/SRR1033988.sra & 
wget ftp://ftp-trace.ncbi.nih.gov/sra/sra-instant/reads/ByRun/sra/SRR/SRR103/SRR1033989/SRR1033989.sra 