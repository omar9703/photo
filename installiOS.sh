# main project
git clone ssh://git@globaldevtools.bbva.com:7999/glomomx/glomomxios.git -b develop

# connect project
git clone ssh://git@globaldevtools.bbva.com:7999/glomomx/connectmxios.git -b develop

# configuration submodules
cd glomomxios
git submodule update --init --recursive

cd BBVAConfiguration/glomomxanalyticsconfig
git fetch
git checkout mx
git pull origin mx
cd ../../

cd BBVAConfiguration/glomomxappconfig
git fetch
git checkout mx
git pull origin mx
cd ../../

cd BBVAConfiguration/glomomxappworkflow
git fetch
git checkout develop
git pull origin develop
cd ../../

cd glomomxios/
pod install
cd ..
