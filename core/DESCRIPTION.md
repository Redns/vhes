
 ******************************************************************
 * Copyright (c) 2019-present, VIP Lab, Fudan University
 * Contact: fanyibo@fudan.eud.cn
 ******************************************************************

*** File List ***
|-- h265 openasic ------------------------------------------------------------------------- main folder 
    |-- lib ------------------------------------------------------------------------------- behavioral memory model 

    |-- rtl ------------------------------------------------------------------------------- full RTL of the h265 encoder 
        |-- cabac ------------------------------------------------------------------------- RTL for the cabac
        |-- db ---------------------------------------------------------------------------- RTL for the deblockign and sao 
        |-- fetch ------------------------------------------------------------------------- RTL for the fetch, data exchange with the external memory 
        |-- fme --------------------------------------------------------------------------- RTL for the fractional motion estimation, interpolation 
        |-- ime --------------------------------------------------------------------------- RTL for the integer motion estimation 
        |-- mem --------------------------------------------------------------------------- all the memory model in the h265 encoder 
        |-- posi -------------------------------------------------------------------------- RTL for the pos-intra, CU partition decision 
        |-- prei -------------------------------------------------------------------------- RTL for the pre-intra, CU mode decision 
        |-- rec --------------------------------------------------------------------------- RTL for the reconstruction loop, including intra prediciton, motion compensation, DCT/Quan/IQuan/IDCT
        |-- top --------------------------------------------------------------------------- RTL for the h265 encoder top architecture, interface, ping-pong memory
        |-- enc_defines.v ----------------------------------------------------------------- defines in the h265 encoder 

    |-- sim ------------------------------------------------------------------------------- simulation files for the h265 encoder 
        |-- top_testbench ----------------------------------------------------------------- TV and TB for the h265 encoder top 

    |-- sw -------------------------------------------------------------------------------- F265 for the test vector generation to test the h265 encoder RTL
        |-- f265 -------------------------------------------------------------------------- linux version 
        |-- f265.exe ---------------------------------------------------------------------- windows version under debug/win32
        |-- f265_encode.cfg --------------------------------------------------------------- cfg file for the f265 


*** Instruction *** 

   a. configure the parameters in the f265_encoder.cfg, input sequence, qp, gop, dump mode of the module to test
   b. generate TV files by "f265 -c f265_encode.cfg" 
   c. put the TVs into the tv folder in sim/top_testbench/tv 
   d. make sure the parameters in the TB are the same as the parameters in the f265_encoder.cfg
   e. start the simulation by the makefile. If something wrong, the simulation will be teriminated and you should check the parameters or the waveform further.

*** Please feel free to contact us with any questions *** 

### DO NOT ADD ANYTHING BELOW THIS LINE ###