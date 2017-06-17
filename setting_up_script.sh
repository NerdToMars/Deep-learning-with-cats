## First time installs
#pip install tensorboard_logger
#pip install opencv-python

## Download CAT dataset
wget -nc https://web.archive.org/web/20150703060412/http://137.189.35.203/WebUI/CatDatabase/Data/CAT_DATASET_01.zip
wget -nc https://web.archive.org/web/20150703060412/http://137.189.35.203/WebUI/CatDatabase/Data/CAT_DATASET_02.zip
wget -nc https://web.archive.org/web/20150703060412/http://137.189.35.203/WebUI/CatDatabase/Data/00000003_015.jpg.cat

## Setting up folder
unzip CAT_DATASET_01.zip -d cat_dataset
unzip CAT_DATASET_02.zip -d cat_dataset
mv cat_dataset/CAT_00/* cat_dataset
rmdir cat_dataset/CAT_00
mv cat_dataset/CAT_01/* cat_dataset
rmdir cat_dataset/CAT_01
mv cat_dataset/CAT_02/* cat_dataset
rmdir cat_dataset/CAT_02
mv cat_dataset/CAT_03/* cat_dataset
rmdir cat_dataset/CAT_03
mv cat_dataset/CAT_04/* cat_dataset
rmdir cat_dataset/CAT_04
mv cat_dataset/CAT_05/* cat_dataset
rmdir cat_dataset/CAT_05
mv cat_dataset/CAT_06/* cat_dataset
rmdir cat_dataset/CAT_06

## Error correction
rm cat_dataset/00000003_019.jpg.cat
mv 00000003_015.jpg.cat cat_dataset/00000003_015.jpg.cat

## Preprocessing
mkdir cat_dataset_output
wget -nc https://raw.githubusercontent.com/AlexiaJM/Deep-learning-with-cats/master/preprocess_cat_dataset.py
python preprocess_cat_dataset.py

## Removing cat_dataset
rm -r cat_dataset

## Removing outliers
# Corrupted, drawings, badly cropped, inverted, impossible to tell it's a cat, blocked face
cd cat_dataset_output
rm 00000004_007.jpg 00000007_002.jpg 00000045_028.jpg 00000050_014.jpg 00000056_013.jpg 00000059_002.jpg 00000108_005.jpg 00000122_023.jpg 00000126_005.jpg 00000132_018.jpg 00000142_024.jpg 00000142_029.jpg 00000143_003.jpg 00000145_021.jpg 00000166_021.jpg 00000169_021.jpg 00000186_002.jpg 00000202_022.jpg 00000208_023.jpg 00000210_003.jpg 00000229_005.jpg 00000236_025.jpg 00000249_016.jpg 00000254_013.jpg 00000260_019.jpg 00000261_029.jpg 00000265_029.jpg 00000271_020.jpg 00000282_026.jpg 00000316_004.jpg 00000352_014.jpg 00000400_026.jpg 00000406_006.jpg 00000431_024.jpg 00000443_027.jpg 00000502_015.jpg 00000504_012.jpg 00000510_019.jpg 00000514_016.jpg 00000514_008.jpg 00000515_021.jpg 00000519_015.jpg 00000522_016.jpg 00000523_021.jpg 00000529_005.jpg 00000556_022.jpg 00000574_011.jpg 00000581_018.jpg 00000582_011.jpg 00000588_016.jpg 00000588_019.jpg 00000590_006.jpg 00000592_018.jpg 00000593_027.jpg 00000617_013.jpg 00000618_016.jpg 00000619_025.jpg 00000622_019.jpg 00000622_021.jpg 00000630_007.jpg 00000645_016.jpg 00000656_017.jpg 00000659_000.jpg 00000660_022.jpg 00000660_029.jpg 00000661_016.jpg 00000663_005.jpg 00000672_027.jpg 00000673_027.jpg 00000675_023.jpg 00000692_006.jpg 00000800_017.jpg 00000805_004.jpg 00000807_020.jpg 00000823_010.jpg 00000824_010.jpg 00000836_008.jpg 00000843_021.jpg 00000850_025.jpg 00000862_017.jpg 00000864_007.jpg 00000865_015.jpg 00000870_007.jpg 00000877_014.jpg 00000882_013.jpg 00000887_028.jpg 00000893_022.jpg 00000907_013.jpg 00000921_029.jpg 00000929_022.jpg 00000934_006.jpg 00000960_021.jpg 00000976_004.jpg 00000987_000.jpg 00000993_009.jpg 00001006_014.jpg 00001008_013.jpg 00001012_019.jpg 00001014_005.jpg 00001020_017.jpg 00001039_008.jpg 00001039_023.jpg 00001048_029.jpg 00001057_003.jpg 00001068_005.jpg 00001113_015.jpg 00001140_007.jpg 00001157_029.jpg 00001158_000.jpg 00001167_007.jpg 00001184_007.jpg 00001188_019.jpg 00001204_027.jpg 00001205_022.jpg 00001219_005.jpg 00001243_010.jpg 00001261_005.jpg 00001270_028.jpg 00001274_006.jpg 00001293_015.jpg 00001312_021.jpg 00001365_026.jpg 00001372_006.jpg 00001379_018.jpg 00001388_024.jpg 00001389_026.jpg 00001418_028.jpg 00001425_012.jpg 00001431_001.jpg 00001456_018.jpg 00001458_003.jpg 00001468_019.jpg 00001475_009.jpg 00001487_020.jpg
