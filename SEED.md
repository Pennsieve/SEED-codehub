# Purpose
This image was built from the [Penn CNT code hub repository](https://github.com/penn-cnt)

This repository is private, so this one was made, with a few edits to answer the needs of the SEED team: placing BIDS into EDF

This image has many other tools that can be utilized other than what is described here. See main README.md for more details.

## SEED Instructions

1. Install [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. In the folder with the EDF file(s), create a CSV which contains paths for each EDF. See [sameple_CSV for example](https://github.com/Pennsieve/SEED-codehub/blob/main/sample_CSV.csv). Name this CSV `input.csv`
3. After Docker Desktop is installed and running on your computer, open the command line terminal
4. In the terminal run `docker pull pennsieve/seed-codehub:latest` Note: This is a ~6GB download
5. Next run `docker run -it --platform linux/amd64 -v PATH_TO_EDF:/app/data pennsieve/seed-codehub` Note: Change PATH_TO_EDF to the location of the files
6. Finally run `python scripts/codehub/utils/acquisition/BIDS/EEG_BIDS.py  --edf --bids_root /app/data --input_csv /app/data/input.csv`
7. The script will run, placing the EDFs into BIDS format. The input csv and original EDF folders will remain in the root folder. These can be removed

---

[Also reference video demo](https://drive.google.com/file/d/18y6fWelrR44w19x7xOurs21cw_7xGaIW/view?usp=drive_link)