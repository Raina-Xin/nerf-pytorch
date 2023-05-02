# Setup
Firstly setup NeRF according to original paper readme

# For calculate metrics
- We changed run_nerf.py to be able to save numerical metrics in a .txt file
- Add two flags `--render_only --render_test` to the command

# Reproduction

We followed original paper readme

# Ablation
Following are commands for ablation:
## No Positional Encoding
```
python run_nerf.py --datadir ./data/nerf_synthetic/lego --expname blender_paper_lego_no_PE --config paper_configs/blender_config_no_PE.txt 
```

## No View Dependence
```
python run_nerf.py --datadir ./data/nerf_synthetic/lego  --expname blender_paper_lego_no_VD  --config paper_configs/blender_config_no_VD.txt  
``` 

## No Hierarchical Sampling
```
python run_nerf.py --datadir ./data/nerf_synthetic/lego  --expname blender_paper_lego_no_HS  --config paper_configs/blender_config_no_HS.txt 
```

# Parameter sensitivity
Following are commands for parameter sensitivity:
## Change network layer number
```
python run_nerf.py --config nerf-pytorch/configs/fortress.txt --expname fortress_test_depth_6 --netdepth 6 
```


## Change network layer channel
```
python run_nerf.py --config nerf-pytorch/configs/fortress.txt --expname fortress_test_width_128 --netwidth 128 
```

## Change noise std
```
python run_nerf.py --config nerf-pytorch/configs/fortress.txt --expname fortress_test_noise_1e0 --raw_noise_std 1e0
```

# New Data
Please put the new data under `./GP_data/Channel1`.

## Run nerf on new data
```
python run_nerf.py --datadir ./GP_data/Channel1 --expname gp_channel --config configs/channel.txt 
```

# loss function
- We changed loss function in run_nerf_helpers.py
- Following are commands for different loss function:
## MSE
```
python run_nerf.py --datadir ./GP_data/Channel1 --expname gp_channel_mse --config configs/channel.txt --render_only 
```

## MAE
```
python run_nerf_mae.py --datadir ./GP_data/Channel1 --expname gp_channel_mae --config configs/channel.txt 
```

## MSLE
```
python run_nerf_msle.py --datadir ./GP_data/Channel1 --expname gp_channel_msle --config configs/channel.txt 
```
