CUDA_VISIBLE_DEVICE=2 python run_nerf.py --datadir ./data/nerf_synthetic/lego --expname blender_paper_lego_no_PE --config paper_configs/blender_config_no_PE.txt --render_only --render_test --gpu_idx 2

CUDA_VISIBLE_DEVICE=2 python run_nerf.py --datadir ./data/nerf_synthetic/lego  --expname blender_paper_lego_no_VD  --config paper_configs/blender_config_no_VD.txt  --render_only --render_test --gpu_idx 2

CUDA_VISIBLE_DEVICE=2 python run_nerf.py --datadir ./data/nerf_synthetic/lego  --expname blender_paper_lego_no_HS  --config paper_configs/blender_config_no_HS.txt --render_only --render_test --gpu_idx 2
