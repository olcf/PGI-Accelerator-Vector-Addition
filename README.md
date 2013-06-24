PGI Accelerator Tutorial
========================

To compile and run this vector addition example, you will need to modify `submit.pbs` and replace "abc123" with your project id. After that, simply type the following commands inside this directory:

```bash
module load cudatoolkit
module load PrgEnv-pgi
make
```

The first two commands will load the CUDA toolkit and the PGI Fortran compiler, while the last command will execute statements in the `Makefile` that will build the code and submit it to the default queue on TITAN.

#### Output
When you have successfully compiled and run the example program, you should see output like the following:

    Thu Jun 20 12:53:15 EDT 2013
     final result:     1.000000    
    Application 493223 resources: utime ~0s, stime ~1s, Rss ~85284, inblocks ~213, outblocks ~62
