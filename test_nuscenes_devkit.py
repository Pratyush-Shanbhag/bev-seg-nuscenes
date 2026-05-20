from nuscenes.nuscenes import NuScenes

nusc = NuScenes(
    version='v1.0-mini',
    dataroot='/home/pratyush/ISyE_Research/datasets/unzipped/Nuscenes/v1.0-mini',
    verbose=True
)

print(len(nusc.scene))
print(nusc.scene[0])