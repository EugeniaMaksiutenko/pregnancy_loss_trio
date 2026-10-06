#!/bin/bash

docker run -v /media/DATA:/media/DATA broadinstitute/gatk gatk --java-options "-Xmx32g" VariantFiltration \
		-V /media/DATA/pregloss_project/ploss_analysis.v3.VEP.Recalibrated.vcf \
		-O /media/DATA/pregloss_project/flt_ploss_analysis.v3.VEP.Recalibrated.vcf \
		--genotype-filter-expression "DP < 10" \
		--genotype-filter-name "dp_filter"

docker run -v /media/DATA/:/media/DATA/ broadinstitute/gatk gatk --java-options "-Xmx3g" SelectVariants \
		-V /media/DATA/pregloss_project/flt_ploss_analysis.v3.VEP.Recalibrated.vcf \
		-O /media/DATA/pregloss_project/ploss_analysis.v3.VEP.Recalibrated.Filtered.vcf \
		--set-filtered-gt-to-nocall \
		--exclude-non-variants
