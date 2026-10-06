# Pregnancy los genetics analysis

This repository contains data and code pieces used during the analysis of short genetic variants leading to pregnancy loss in a cohort of 70 trios. 

## Repository contents

**Important note!** Due to the requirements of the federal law of the Russian Federation, public sharing of raw sequencing data or processed genotype data is not allowed. This repository thus contains only the code pieces usedd for the analysis, as well as extended tables with candidate genetic variants discussed in the article.

`all_compound_candidates.v3.tsv` - a tab-separated table containing information on all detected compound heterozygous genotypes )pairs of variants in trans) meeting the filtering criteria;

`all_homozygotes.v3.tsv` - a tab-separated table containing information about all detected homoztgous variants in the fetal genome that are not homozygous in either of the parents (and meets filtering criteria discussed in the manuscript);

`ploss_de_novo.v3.tsv` - a tab-separated table containing information on all detected *de novo* mutations in the fetal genomes;

`Main_Analysis.ipynb` - a Jupyter notebook containing all of the code used for final variant- and sample-level filtering as well as  identification of candidate variants;

`PL_cohort_meta.v3.tsv` - the file contining mapping of samples to families and within-family status;

`filter.v3.sh`, `vqsr.v3.sh` - scripts used fo the pre-filtering of variants following genotyping/
