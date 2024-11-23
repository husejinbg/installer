wget -q -P ./saves/ https://github.com/hkchengrex/Tracking-Anything-with-DEVA/releases/download/v1.0/DEVA-propagation.pth
wget -q -P ./saves/ https://dl.fbaipublicfiles.com/segment_anything/sam_vit_h_4b8939.pth # original SAM
wget -q -P ./saves/ https://github.com/ChaoningZhang/MobileSAM/raw/master/weights/mobile_sam.pt # mobile SAM

# swint : smaller backbone
# wget -q -P ./saves/ https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha/groundingdino_swint_ogc.pth
# wget -q -P ./saves/ https://github.com/hkchengrex/Tracking-Anything-with-DEVA/releases/download/v1.0/GroundingDINO_SwinT_OGC.py

# swinb : larger backbone
wget -q -P ./saves/ https://github.com/IDEA-Research/GroundingDINO/releases/download/v0.1.0-alpha2/groundingdino_swinb_cogcoor.pth
wget -q -P ./saves/ https://raw.githubusercontent.com/IDEA-Research/GroundingDINO/main/groundingdino/config/GroundingDINO_SwinB_cfg.py

git clone https://github.com/hkchengrex/Grounded-Segment-Anything

cd Grounded-Segment-Anything
pip uninstall -y GroundingDINO
pip install -e GroundingDINO
pip install -q -e segment_anything
pip install pillow==10.0.0

git clone https://github.com/husejinbg/Tracking-Anything-with-DEVA.git
cd Tracking-Anything-with-DEVA
pip install -q -e .