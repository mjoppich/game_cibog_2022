# ensures we can install everything
library(devtools) # => install.packages("devtools")

# accessing files, plotting
library(readr) # => install.packages("readr")
library(ggplot2) # => install.packages("ggplot2")
library(cowplot) # => install.packages("cowplot")
library(ggrepel) # => install.packages("ggrepel")
library(pheatmap) # => install.packages("pheatmap")
library(RColorBrewer) # => install.packages(" RColorBrewer ")

library(EnhancedVolcano) # => BiocManager::install('EnhancedVolcano') or devtools::install_github('kevinblighe/EnhancedVolcano')
library(DESeq2) # => BiocManager::install('DESeq2')
library(clusterProfiler) # => BiocManager::install('clusterProfiler')
library(DOSE) # => BiocManager::install('DOSE')
library(enrichplot) # => BiocManager::install('enrichplot')
library(ReactomePA) # => BiocManager::install('ReactomePA')
library(org.Hs.eg.db) # => BiocManager::install('org.Hs.eg.db')

library(disgenet2r) # => devtools::install_bitbucket("ibi_group/disgenet2r")
