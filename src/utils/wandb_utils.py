import wandb

def init_wandb(cfg):
    wandb.init(
        project="bev-seg-nuscenes",
        name=cfg.experiment.name,        # e.g. "lss-resnet50-bev200-focal-lr1e4"
        config=dict(cfg),                # logs all Hydra hyperparams automatically
        tags=[cfg.model.backbone, cfg.data.split],
    )

def log_train_step(loss, lr, grad_norm, step):
    wandb.log({"train/loss": loss, "train/lr": lr, "train/grad_norm": grad_norm}, step=step)

def log_val_epoch(metrics: dict, step: int):
    wandb.log(metrics, step=step)        # pass {"val/miou": ..., "val/iou_drivable": ..., etc.}

def log_images(images: list, caption: str, step: int):
    wandb.log({caption: [wandb.Image(img) for img in images]}, step=step)