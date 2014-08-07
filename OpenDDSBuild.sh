#!/bin/bash

# from http://www.dre.vanderbilt.edu/~schmidt/DOC_ROOT/CIAO/connectors/dds4ccm/DDS4CCM-INSTALL.html
export DOC_ROOT=$(pwd)
export ACE_ROOT=$DOC_ROOT/ACE
export TAO_ROOT=$DOC_ROOT/TAO
export CIAO_ROOT=$DOC_ROOT/CIAO
export DANCE_ROOT=$DOC_ROOT/DAnCE
export DDS_ROOT=$DOC_ROOT/../DDS
export MPC_ROOT=$DOC_ROOT/../MPC

#cd $TAO_ROOT/TAO_IDL
#$ACE_ROOT/bin/mwc.pl -static -type gnuace -features tao_idl_fe_gen=1
#make -f GNUmakefile.TAO_IDL_GEN y.tab
#make -f GNUmakefile.TAO_IDL_GEN lex.yy
#make

(cd ${DDS_ROOT};./configure)

#export LD_LIBRARY_PATH=$ACE_ROOT/lib:$DDS_ROOT/lib:$LD_LIBRARY_PATH
#echo -e '#include "ace/config-linux.h"' > $ACE_ROOT/ace/config.h
#echo -e 'dds4ccm_opendds=1\nxerces3=1\ninclude $(ACE_ROOT)/include/makeinclude/platform_linux.GNU' > $ACE_ROOT/include/makeinclude/platform_macros.GNU
#echo -e 'dds4ccm_opendds=1\ndds_suppress_anys=0\nxerces3=1\n' > $ACE_ROOT/bin/MakeProjectCreator/config/default.features
#cd $CIAO_ROOT && $ACE_ROOT/bin/mwc.pl -type gnuace -workers 4 CIAO_TAO_DAnCE_OpenDDS.mwc
#cd $CIAO_ROOT/connectors/dds4ccm/examples/Shapes && $ACE_ROOT/bin/mwc.pl -type gnuace -workers 4
#cd $CIAO_ROOT && make
#cd $CIAO_ROOT/connectors/dds4ccm/examples/Shapes && make
#cd $CIAO_ROOT/connectors/dds4ccm/examples/Shapes/descriptors && perl run_test.pl
