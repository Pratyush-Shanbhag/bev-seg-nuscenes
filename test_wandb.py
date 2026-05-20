import wandb

wandb.init(project="bev-seg-nuscenes", name="smoke-test")
for i in range(10):
    wandb.log({"fake_loss": 1.0 / (i + 1), "step": i})
wandb.finish()