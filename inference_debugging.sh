torchrun --nproc_per_node 1 -m \
    --master_addr=127.0.0.2 --master_port=28642 \
    infer_debugging \
    --t_model ViT-B-16 \
    --model ViT-T-16 \
    --t_model_checkpoint "/home/jiwon/FLIP_T_ckpt/msu_flip_mcl.pth.tar"\
    --config M \
    --ckpt log/ckpt/flip_mcl_checkpoint_run_0.pth.tar/_checkpoint.pth.tar\
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
    --alpha_icl_loss 0.  \
    --swin True  \
    --vis True \
    --set_wandb True \
    --user y
