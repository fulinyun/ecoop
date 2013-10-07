TEMPBUILD=/home/$USER/centos_build
mkdir -p $TEMPBUILD
mkdir -p $TEMPBUILD/tarball
mkdir -p $TEMPBUILD/src

cd $TEMPBUILD 
export PATH=/home/$USER/Envs/env1/bin:$PATH


wget http://download.osgeo.org/proj/proj-4.8.0.tar.gz
tar -zxf proj-4.8.0.tar.gz 
cd proj-4.8.0
./configure --prefix=/home/$USER/Envs/env1/ >> ../proj_configure.log
make -j 8 >> ../proj_build.log
make install >> ../proj_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv proj-4.8.0.tar.gz $TEMPBUILD/tarball
mv proj-4.8.0 $TEMPBUILD/src
wget http://softlayer-dal.dl.sourceforge.net/project/matplotlib/matplotlib-toolkits/basemap-1.0.7/basemap-1.0.7.tar.gz
tar -zxf basemap-1.0.7.tar.gz
cd basemap-1.0.7
cd geos-3.3.3
export GEOS_DIR=/home/$USER/Envs/env1/
./configure --prefix=$GEOS_DIR >> ../../geos_configure.log
make -j 8 >> ../../geos_build.log
make install >> ../../geos_install.log
make distclean > /dev/null 2>&1
cd ..
/home/$USER/Envs/env1/bin/python setup.py install >> ../pyinstall.log
rm -rf build
cd $TEMPBUILD
mv basemap-1.0.7.tar.gz $TEMPBUILD/tarball
mv basemap-1.0.7 $TEMPBUILD/src

/home/$USER/Envs/env1/bin/pip install shapely >> pip.log
/home/$USER/Envs/env1/bin/pip install descartes >> pip.log

wget http://download.osgeo.org/shapelib/shapelib-1.3.0.tar.gz
tar -zxf shapelib-1.3.0.tar.gz
cd shapelib-1.3.0
wget http://ftp.intevation.de/users/bh/pyshapelib/pyshapelib-0.3.tar.gz
tar -zxf pyshapelib-0.3.tar.gz
cd pyshapelib-0.3
/home/$USER/Envs/env1/bin/python setup.py install >> pyinstall.log
rm -rf build
cd $TEMPBUILD 
mv shapelib-1.3.0.tar.gz $TEMPBUILD/tarball
mv shapelib-1.3.0 $TEMPBUILD/src


