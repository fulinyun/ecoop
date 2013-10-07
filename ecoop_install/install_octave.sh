TEMPBUILD=/home/$USER/centos_build
mkdir -p $TEMPBUILD
mkdir -p $TEMPBUILD/tarball
mkdir -p $TEMPBUILD/src

cd $TEMPBUILD 
export PATH=/home/$USER/Envs/env1/bin:$PATH


wget http://dev.gentoo.org/%7Ebicatali/distfiles/suitesparseconfig-4.0.2.tar.gz
tar -zxf suitesparseconfig-4.0.2.tar.gz
cd suitesparseconfig-4.0.2
./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../suitesparseconfig_configure.log
make -j 8 >> ../suitesparseconfig_build.log
make install >> ../suitesparseconfig_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv suitesparseconfig-4.0.2.tar.gz $TEMPBUILD/tarball
mv suitesparseconfig-4.0.2 $TEMPBUILD/src


wget http://dev.gentoo.org/%7Ebicatali/distfiles/amd-2.3.1.tar.gz
tar -zxf amd-2.3.1.tar.gz
cd amd-2.3.1
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../amd_configure.log
make -j 8 >> ../amd_build.log
make install >> ../amd_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv amd-2.3.1.tar.gz $TEMPBUILD/tarball
mv amd-2.3.1 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/btf-1.2.0.tar.gz
tar -zxf btf-1.2.0.tar.gz
cd btf-1.2.0
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../btf_configure.log
make -j 8 >> ../btf_build.log
make install >> ../btf_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv btf-1.2.0.tar.gz $TEMPBUILD/tarball
mv btf-1.2.0 $TEMPBUILD/src


wget http://dev.gentoo.org/%7Ebicatali/distfiles/camd-2.3.1.tar.gz
tar -zxf camd-2.3.1.tar.gz
cd camd-2.3.1
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../camd_configure.log
make -j 8 >> ../camd_build.log
make install >> ../camd_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv camd-2.3.1.tar.gz $TEMPBUILD/tarball
mv camd-2.3.1 $TEMPBUILD/src


wget http://dev.gentoo.org/%7Ebicatali/distfiles/ccolamd-2.8.0.tar.gz
tar -zxf ccolamd-2.8.0.tar.gz
cd ccolamd-2.8.0
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../ccolamd_configure.log
make -j 8 >> ../ccolamd_build.log
make install >> ../ccolamd_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv ccolamd-2.8.0.tar.gz $TEMPBUILD/tarball
mv ccolamd-2.8.0 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/cfitsio-3.350.tar.gz
tar -zxf cfitsio-3.350.tar.gz
cd cfitsio-3.350
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../cfitsio_configure.log
make -j 8 >> ../cfitsio_build.log
make install >> ../cfitsio_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv cfitsio-3.350.tar.gz $TEMPBUILD/tarball
mv cfitsio-3.350 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/colamd-2.8.0.tar.gz
tar -zxf colamd-2.8.0.tar.gz
cd colamd-2.8.0
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../colamd_configure.log
make -j 8 >> ../colamd_build.log
make install >> ../colamd_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD 
mv colamd-2.8.0.tar.gz $TEMPBUILD/tarball
mv colamd-2.8.0 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/cholmod-2.0.1.tar.gz
tar -zxf cholmod-2.0.1.tar.gz
cd cholmod-2.0.1
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../cholmod_configure.log
make -j 8 >> ../cholmod_build.log
make install >> ../cholmod_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD 
mv cholmod-2.0.1.tar.gz $TEMPBUILD/tarball
mv cholmod-2.0.1 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/cxsparse-3.1.1.tar.gz
tar -zxf cxsparse-3.1.1.tar.gz
cd cxsparse-3.1.1
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../cxsparse_configure.log
make -j 8 >> ../cxsparse_build.log
make install >> ../cxsparse_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv cxsparse-3.1.1.tar.gz $TEMPBUILD/tarball
mv cxsparse-3.1.1 $TEMPBUILD/src

wget http://dev.gentoo.org/%7Ebicatali/distfiles/umfpack-5.6.1.tar.gz
tar -zxf umfpack-5.6.1.tar.gz
cd umfpack-5.6.1
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../umfpack_configure.log
make -j 8 >> ../umfpack_build.log
make install >> ../umfpack_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv umfpack-5.6.1.tar.gz $TEMPBUILD/tarball
mv umfpack-5.6.1 $TEMPBUILD/src

wget http://softlayer-dal.dl.sourceforge.net/project/qrupdate/qrupdate/1.2/qrupdate-1.1.2.tar.gz
tar -zxf qrupdate-1.1.2.tar.gz
cd qrupdate-1.1.2
make -j 8 >> ../qrupdate_build.log
cp libqrupdate.so /home/$USER/Envs/env1/lib/
make dictclean
cd $TEMPBUILD
mv qrupdate-1.1.2.tar.gz $TEMPBUILD/tarball
mv qrupdate-1.1.2 $TEMPBUILD/src

# non va! :(
wget http://ftp.gnu.org/gnu/glpk/glpk-4.52.tar.gz
tar -zxf glpk-4.52.tar.gz
cd glpk-4.52
LD_LIBRARY_PATH=/home/$USER/Envs/env1/lib/ PKG_CONFIG_PATH=/home/$USER/Envs/env1/lib/pkgconfig ./configure --enable-shared --prefix=/home/$USER/Envs/env1/ >> ../glpk_configure.log
make -j 8 >> ../glpk_build.log
make install >> ../glpk_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv glpk-4.52.tar.gz $TEMPBUILD/tarball
mv glpk-4.52 $TEMPBUILD/src

# non va! :(
wget http://www.qhull.org/download/qhull-2012.1-src.tgz
tar qhull-2012.1-src.tgz
cd qhull-2012.1-src
make -j 8 >> ../qhull_build.log
cp lib/* /home/$USER/Envs/env1/lib/
make distclean > /dev/null 2>&1
cd $TEMPBUILD
mv qhull-2012.1-src.tgz $TEMPBUILD/tarball
mv qhull-2012.1-src $TEMPBUILD/src

wget ftp://ftp.gnu.org/gnu/octave/octave-3.6.4.tar.gz
tar -zxf octave-3.6.4.tar.gz
cd octave-3.6.4
CPPFLAGS=-I/home/$USER/Envs/env1/include LDFLAGS=-L/home/$USER/Envs/env1/lib ./configure --with-hdf5-includedir=/home/$USER/Envs/env1/include/ --with-hdf5-libdir=/home/$USER/Envs/env1/lib --with-glpk-libdir=/home/$USER/Envs/env1/lib --with-glpk-includedir=/home/$USER/Envs/env1/include/ --prefix=/home/$USER/Envs/env1/ --with-magick=ImageMagick --enable-shared >> ../octave_configure.log
make -j 8 >> ../octave_build.log
make install >> ../octave_install.log
make distclean > /dev/null 2>&1
cd $TEMPBUILD 
mv octave-3.6.4.tar.gz $TEMPBUILD/tarball
mv octave-3.6.4 $TEMPBUILD/src

/home/$USER/Envs/env1/bin/pip install oct2py >> pip.log