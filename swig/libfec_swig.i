/* -*- c++ -*- */

#define LIBFEC_API

%include "gnuradio.i"			// the common stuff

//load generated python docstrings
%include "libfec_swig_doc.i"

%{
#include "libfec/decode_rs.h"
%}


%include "libfec/decode_rs.h"
GR_SWIG_BLOCK_MAGIC2(libfec, decode_rs);
