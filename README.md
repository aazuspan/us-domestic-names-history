# US Domestic Names History

![Status](https://github.com/aazuspan/us-domestic-names-history/actions/workflows/update.yml/badge.svg)

Tracking changes to [domestic place names](https://www.usgs.gov/us-board-on-geographic-names/domestic-names) in the United States. 

- **Source**: Files are automatically updated from the [GNIS database](https://prd-tnm.s3.amazonaws.com/index.html?prefix=StagedProducts/GeographicNames) daily. The history[^first-commit] of tracked changes can be viewed [here](https://github.com/aazuspan/us-domestic-names-history/commits/main/?author=github-actions%5Bbot%5D).

- **Format**: Data are stored in the original pipe-delimited TXT files. The GNIS file schema is described [here](https://prd-tnm.s3.amazonaws.com/StagedProducts/GeographicNames/GNIS_file_format.pdf).

*Inspired by [ca-fires-history](https://github.com/simonw/ca-fires-history) by Simon Willison.*

[^first-commit]: Most records begin on February 17, 2025, with the exception of Lousiana and Alabama which were retrieved from Internet Archive snapshots on February 4 and 6, respectively. 