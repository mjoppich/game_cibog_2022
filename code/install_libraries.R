# ensures we can install everything
install.packages("devtools")

# accessing files, plotting
install.packages("readr")
install.packages("ggplot2")
install.packages("cowplot")
install.packages("ggrepel")
install.packages("pheatmap")
install.packages("RColorBrewer")

# Bioconductor package manager => required for basically all bioinformatics tasks
if (!requireNamespace('BiocManager', quietly = TRUE))
  install.packages('BiocManager')

devtools::install_github('kevinblighe/EnhancedVolcano')
BiocManager::install('DESeq2')
BiocManager::install('clusterProfiler')
BiocManager::install('DOSE')
BiocManager::install('enrichplot')
BiocManager::install('ReactomePA')
BiocManager::install('org.Hs.eg.db')

devtools::install_bitbucket("ibi_group/disgenet2r")

