#!/usr/bin/env bash

set -e

PROJECT_ROOT="."

mkdir -p \
"$PROJECT_ROOT"/configs/model \
"$PROJECT_ROOT"/configs/data \
"$PROJECT_ROOT"/configs/train \
"$PROJECT_ROOT"/configs/experiment \
"$PROJECT_ROOT"/src/data \
"$PROJECT_ROOT"/src/models \
"$PROJECT_ROOT"/src/losses \
"$PROJECT_ROOT"/src/metrics \
"$PROJECT_ROOT"/src/utils \
"$PROJECT_ROOT"/scripts \
"$PROJECT_ROOT"/notebooks \
"$PROJECT_ROOT"/assets \
"$PROJECT_ROOT"/docs

touch "$PROJECT_ROOT"/requirements.txt
touch "$PROJECT_ROOT"/setup.py

touch "$PROJECT_ROOT"/configs/model/lss_effnet.yaml
touch "$PROJECT_ROOT"/configs/model/lss_resnet50.yaml

touch "$PROJECT_ROOT"/configs/data/nuscenes_mini.yaml
touch "$PROJECT_ROOT"/configs/data/nuscenes_trainval.yaml

touch "$PROJECT_ROOT"/configs/train/default.yaml

touch "$PROJECT_ROOT"/configs/experiment/baseline.yaml
touch "$PROJECT_ROOT"/configs/experiment/ablation_no_augment.yaml
touch "$PROJECT_ROOT"/configs/experiment/ablation_resnet18.yaml

touch "$PROJECT_ROOT"/src/data/nuscenes_dataset.py
touch "$PROJECT_ROOT"/src/data/map_utils.py
touch "$PROJECT_ROOT"/src/data/transforms.py

touch "$PROJECT_ROOT"/src/models/lss.py
touch "$PROJECT_ROOT"/src/models/backbone.py
touch "$PROJECT_ROOT"/src/models/decoder.py

touch "$PROJECT_ROOT"/src/losses/bev_losses.py

touch "$PROJECT_ROOT"/src/metrics/iou.py

touch "$PROJECT_ROOT"/src/utils/viz.py
touch "$PROJECT_ROOT"/src/utils/checkpoint.py
touch "$PROJECT_ROOT"/src/utils/wandb_utils.py

touch "$PROJECT_ROOT"/scripts/train.py
touch "$PROJECT_ROOT"/scripts/evaluate.py
touch "$PROJECT_ROOT"/scripts/visualize.py
touch "$PROJECT_ROOT"/scripts/precompute_labels.py

touch "$PROJECT_ROOT"/notebooks/01_data_exploration.ipynb
touch "$PROJECT_ROOT"/notebooks/02_coordinate_frames.ipynb
touch "$PROJECT_ROOT"/notebooks/03_results_analysis.ipynb

touch "$PROJECT_ROOT"/assets/method_diagram.png
touch "$PROJECT_ROOT"/assets/qualitative_results.gif
touch "$PROJECT_ROOT"/assets/wandb_curves.png

touch "$PROJECT_ROOT"/docs/COORDINATE_FRAMES.md

echo "Project structure created successfully."