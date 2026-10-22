#!/bin/bash
# Usage: bash scripts/run_pets.sh DATA_ROOT
# 16-shot OxfordPets with configs/oxford_pets.yaml; only root_path is set. The full run has 60 optimizer
# steps (20 epochs x 3 batches), so the smoke test uses the same uncapped configuration.
DATA=${1:-$HOME/tipdata}
sed "s#^root_path: ''#root_path: '$DATA'#" configs/oxford_pets.yaml > configs/oxford_pets_run.yaml
python main.py --config configs/oxford_pets_run.yaml
