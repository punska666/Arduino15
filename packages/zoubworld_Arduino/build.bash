cd tools ; ./build.bash ; cd ..


cd hardware/samd/*/ ; ./build.bash ; cd ../../..

mkdir Release
cp -Rf hardware/samd/1*/Release/ ./
cp -Rf tools/Release/ ./

echo  "" >./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '{'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '  "packages": ['>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '  {   '>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo ' "name": "zoubworld_Arduino",'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "maintainer": "zoubworld LLC",'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "websiteURL": "http://lfbn-1-14132-125.w90-12.abo.wanadoo.fr/~zoubworld_Arduino/",'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "email": "support@zoubworld.com",'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "help": {'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '        "online": "http://lfbn-1-14132-125.w90-12.abo.wanadoo.fr/~zoubworld_Arduino/support/"'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      },'>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "platforms": ['>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '        '>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
		
cat  Release/package_Zoubworld_sam_m0p-1.6.16-beta-b_index.json >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '   ],' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '      "tools": [' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
cat ./Release/package_bossac_1.7.0-zoubworld-1_index.json>>./Release/package_Zoubworld_1.6.16-beta-b_index.json
cat ./Release/package_CMSIS-Atmel_1.1.0_index.json >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '	  ] ' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '	      } ' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '  ] ' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json
echo '} ' >>./Release/package_Zoubworld_1.6.16-beta-b_index.json

