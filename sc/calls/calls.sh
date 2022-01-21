

CURDIR=`pwd`

#path to cellranger binary/executable
CELLRANGER=$CURDIR/tools/cellranger-6.1.2/bin/cellranger
#path to the reference folder
REFFOLDER_HUMAN=$CURDIR/references/refdata-gex-GRCh38-2020-A

#this is for parallelizing cellranger. choose according to your infrastructure!
OPTS="--localcores 6 --localmem 30"

ls $CELLRANGER

BASE=./sc/

#for each sample run cellranger
for SAMPLE in SUM159DMSO SUM159RDMSO;
do

#path to sample file for current sample
SAMPLEFILE=$CURDIR/$BASE/samples/$SAMPLE.csv

#verify samplefile exists
ls $SAMPLEFILE

#if we rerun this sample, delete existing results
rm -rf $BASE/$SAMPLE

# run cellranger for the selected sample, with given reference and given read-files and optional parameters.
# save output in $SAMPLE.out and redirect error-messages to $SAMPLE.err
# wrapping $CELLRANGER into /usr/bin/time --verbose will print how long the run took and how much RAM was used lateron
(cd $BASE/calls/ && /usr/bin/time --verbose $CELLRANGER count --id=$SAMPLE --transcriptome=$REFFOLDER_HUMAN --libraries=$SAMPLEFILE $OPTS > $SAMPLE.out 2> $SAMPLE.err)

done

