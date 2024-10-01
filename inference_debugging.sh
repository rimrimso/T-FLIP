torchrun --nproc_per_node 1 -m \
    --master_addr=127.0.0.2 --master_port=21222 \
    infer_debugging \
    --t_model ViT-B-16 \
    --model ViT-T-16 \
    --t_model_checkpoint "/home/jiwon/FLIP_T_ckpt/replay_flip_mcl.pth.tar"\
    --config I \
    --ckpt "/home/jiwon/Tyrano_clip/Tyrano-CLIP/log/official_i_attn1/ckpt/flip_mcl_checkpoint_run_0.pth.tar/_checkpoint.pth.tar"\
    --op_dir ckpt \
    --report_logger_path log_test \
    --root "/nas/dataset/FLIP_Dataset/MCIO/frame/"\
    --dataroot "/nas/dataset/FLIP_Dataset/MCIO/txt/"\
    --iterations 12000 \
    --epochs 300 \
    --batch_size 8 \
    --t_batch_size 32 \
    --lr=0.001 \
    --wd=0.1 \
    --alpha_ckd_loss 0. \
    --alpha_fd_loss 30. \
    --alpha_affinity_loss 0 \
    --swin False  \
    --vis True \
    --set_wandb True \
    --user y
