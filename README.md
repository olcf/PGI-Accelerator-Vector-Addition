VecAdd.f90 Example
==================

To compile and run this example, you will need to modify `submit.pbs` and replace "abc123" with your project id. After that, simply type the following commands in this directory

* module load cudatoolkit
* module load PrgEnv-pgi
* make

##### Output
When you have successfully compiled and run the example program, you should see output like the following

    Thu Jun 20 12:53:15 EDT 2013
     final result:     1.000000    
    Application 493223 resources: utime ~0s, stime ~1s, Rss ~85284, inblocks ~213, outblocks ~62
