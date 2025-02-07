
fir1 simulation results

SUMMARY:
Spike Optimization	mcycles	minstret
none	            6484    6500
-O	                856	    863
-O2	                792	    797
        
Questa Optimization	mcycles	minstret
none	            8623	6500
-O	                1222	863
-O2	                943	    797


Output Logs:

No optimization:

(cvw) 09-comp-arch-m@CEAT-ENDV350-09L:~/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1$ spike --isa=rv64gc fir1
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 6484
minstret = 6500

-O optimization:

(cvw) 09-comp-arch-m@CEAT-ENDV350-09L:~/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1$ spike --isa=rv64gc fir1
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 856
minstret = 863


-O2 optimization:

(cvw) 09-comp-arch-m@CEAT-ENDV350-09L:~/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1$ spike --isa=rv64gc fir1
y[0] = 4fad3f2f
y[1] = 627c6236
y[2] = 4fad3f32
y[3] = 1e6f0e17
y[4] = e190f1eb
y[5] = b052c0ce
y[6] = 9d839dc6
y[7] = b052c0cb
y[8] = e190f1e6
y[9] = 1e6f0e12
y[10] = 4fad3f2f
y[11] = 627c6236
y[12] = 4fad3f32
y[13] = 1e6f0e17
y[14] = e190f1eb
y[15] = b052c0ce
y[16] = 9d839dc6
mcycle = 792
minstret = 797


QUESTA!!!!

No Optimization:

# Processing /home/09-comp-arch-m/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1/fir1 with --bit-width 64
# y[0] = 4fad3f2f
# y[1] = 627c6236
# y[2] = 4fad3f32
# y[3] = 1e6f0e17
# y[4] = e190f1eb
# y[5] = b052c0ce
# y[6] = 9d839dc6
# y[7] = b052c0cb
# y[8] = e190f1e6
# y[9] = 1e6f0e12
# y[10] = 4fad3f2f
# y[11] = 627c6236
# y[12] = 4fad3f32
# y[13] = 1e6f0e17
# y[14] = e190f1eb
# y[15] = b052c0ce
# y[16] = 9d839dc6
# mcycle = 8623
# minstret = 6500

-O optimization:

# Processing /home/09-comp-arch-m/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1/fir1 with --bit-width 64
# y[0] = 4fad3f2f
# y[1] = 627c6236
# y[2] = 4fad3f32
# y[3] = 1e6f0e17
# y[4] = e190f1eb
# y[5] = b052c0ce
# y[6] = 9d839dc6
# y[7] = b052c0cb
# y[8] = e190f1e6
# y[9] = 1e6f0e12
# y[10] = 4fad3f2f
# y[11] = 627c6236
# y[12] = 4fad3f32
# y[13] = 1e6f0e17
# y[14] = e190f1eb
# y[15] = b052c0ce
# y[16] = 9d839dc6
# mcycle = 1222
# minstret = 863


-O2 optimization:

# Processing /home/09-comp-arch-m/Desktop/Labs/ecen4243S25-main/cvw/examples/C/fir1/fir1 with --bit-width 64
# y[0] = 4fad3f2f
# y[1] = 627c6236
# y[2] = 4fad3f32
# y[3] = 1e6f0e17
# y[4] = e190f1eb
# y[5] = b052c0ce
# y[6] = 9d839dc6
# y[7] = b052c0cb
# y[8] = e190f1e6
# y[9] = 1e6f0e12
# y[10] = 4fad3f2f
# y[11] = 627c6236
# y[12] = 4fad3f32
# y[13] = 1e6f0e17
# y[14] = e190f1eb
# y[15] = b052c0ce
# y[16] = 9d839dc6
# mcycle = 943
# minstret = 797


