# fir.S 
# assembly language of Finite Impulse Response (FIR)

// a0: base address of x
// a1: base address of c
// a2: base address of y, later used as pointer to y[j] in j loop
// a3: n
// a4: m

// t0: &y[n-m] to check termination of j loop
// t1: &c[m] to check termination of i loop
// t2: &x[j+m-1]
// t3: sum
// t4: pointer to c[i] in i loop
// t5: pointer to x[j-i+(m-1)] 
// t6: value of c[i]
// a5: value of x[j-1+(m-1)]

.global fir

fir:
    subw t0, a3, a4   #n-m, boundaries
    slli t0, t0, 0x2  #multiplying by 4
    add t0, t0, a2    #&y[n-m]

    slli t1, a4, 0x2  #multiplying by 4
    add t1, t1, a1    #&c[m], end of array

    add t2, t2, a4    #j+m
    addi t2, t2, -1   #j+m-1
    slli t2, t2, 0x2  #Multiplying by 4
    add t2, a0, t2    #t2: &x[j+m-1]

    forx:
        bgt a2, t0, donex  #j>=n-m+1, break
        li t3, 0           #sum  
        mv t4, a1          #&c[i]
        mv t5, t2          #&x[j+m-1]

        j forj

        forj:
            bge t4, t1, donej #i>=m, break
            lw t6, 0(t4)      #c[i]
            lw a5, 0(t5)      #&x[j-i+m-1]

            mul a5, a5, t6    #x[j-1+m-1] * c[i]
            srai a5, a5, 31   #shift right arithmetic

            add t3, t3, a5    #sum
            sw t3, 0(a2)      #store sum in y[j]

            addi t4, t4, 4    #increment c[i]
            addi t5, t5, -4   #decrement x pointer

            j forj
        donej:
             
            addi t2, t2, 4  #increment x
            addi a2, a2, 4  #increment y
            
            j forx
    donex:
        ret



    # //we don't need to specify the compact functions. compiler will decide.
    # subw t0, a3, a4 //calculate 16
    # addi t0, t0, 1 // add 1 because y[] is 0 indexed. y[] has 17 entries so the number 17 with be >= the last entry
    # slli t0, t0, 0x2 //4 bytes per address, 17 addresses, 4*17 = 68 bytes to get to end of y
    # add t0,a2,t0 //add to end of y to get address of final y entry
    # //when done, branch to the label <donej>





    



