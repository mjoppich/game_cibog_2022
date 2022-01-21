# game_cibog_2022: Workshop material for GAME-CIBoG workshop


This workshop is accompanied by 6 notebooks which guide you through the bulk RNA-seq, scRNA-seq and gene set enrichment:

- [Getting RNA-seq Data](./code/00_get_data.ipynb): here most of the prerequisites are installed and downloaded. Please also check [the requirements slides](./slides/preparation_required_software.pdf) for required software/libraries! Also the bulk RNA-seq data are downloaded here (both preprocessed results/counts and reads/raw data).
- [Aligning and quantifying bulk RNA-seq Data](./code/01_bulk_align_count.ipynb): the bulk RNA-seq data are aligned to the reference genome and quantified using featureCounts.
- [Getting scRNA-seq Data](./code/01_scrnaseq_run.ipynb): the scRNA-seq data are acquired here, and processed using cellranger counts and cellranger aggregate. Finally, the feature-barcode-matrices of the joint samples are available.
- [Getting scRNA-seq Data](./code/02_bulk_preprocessed.ipynb): the Differential Expression analysis performed on the count matrix obtained from the preprocessed data. This also contains gene set enrichment performed on these data. 
- [Getting scRNA-seq Data](./code/02_bulk_own.ipynb): the Differential Expression analysis performed on the count matrix obtained from the downloaded raw/read-data. This also contains gene set enrichment performed on these data.
- [Getting scRNA-seq Data](./code/03_sc_gene_ontology_enrichment.ipynb): The gene set enrichment analysis performed on the exported scRNA-seq DE genes.