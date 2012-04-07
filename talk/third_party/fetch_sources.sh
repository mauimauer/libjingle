
## Apply my patches
function apply_patches()
{
    mdir=$1
    pushd $mdir
    git checkout -f
    for diff_file in `ls ../pc/$mdir`
    do
	echo try to apply: ../pc/$mdir/$diff_file
	#cat ../pc/$mdir/$diff_file
	patch -p1 < ../pc/$mdir/$diff_file || exit 1
    done
    popd
}

# expat xml parser lib
git clone https://android.googlesource.com/platform/external/expat
apply_patches expat

# Googletests unit test version 1.6.0
git clone -b android git://github.com/dmonakhov/googletest.git gtest
apply_patches gtest

# libsrtp
git clone git://github.com/MIPS/external-srtp.git srtp
apply_patches srtp

# Openssl: libssl and libcrypt
git clone git://github.com/CyanogenMod/android_external_openssl.git openssl
apply_patches openssl
