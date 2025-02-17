#!/bin/bash
set -e

chunks=("AL" "AK" "AZ" "AR" "CA" "CO" "CT" "DE" "FL" "GA"
        "HI" "ID" "IL" "IN" "IA" "KS" "KY" "LA" "ME" "MD"
        "MA" "MI" "MN" "MS" "MO" "MT" "NE" "NV" "NH" "NJ"
        "NM" "NY" "NC" "ND" "OH" "OK" "OR" "PA" "RI" "SC"
        "SD" "TN" "TX" "UT" "VT" "VA" "WA" "WV" "WI" "WY"
        "DC" "MP" "PR" "VI" "AS" "GU")

for chunk in "${chunks[@]}"; do
    echo "Processing $chunk..."

    uri="https://prd-tnm.s3.amazonaws.com/StagedProducts/GeographicNames/DomesticNames/DomesticNames_${chunk}_Text.zip"
    zip_path="${RUNNER_TEMP}/${chunk}.zip"
    txt_path="./data/DomesticNames_${chunk}.txt"
    
    curl -sS "${uri}" -o "${zip_path}"
    unzip -o "${zip_path}" -d "${RUNNER_TEMP}" -x "*[.jpg|.xml]"
    mv "${RUNNER_TEMP}/Text/DomesticNames_${chunk}.txt" "${txt_path}"

    echo "Finished processing $chunk."
done