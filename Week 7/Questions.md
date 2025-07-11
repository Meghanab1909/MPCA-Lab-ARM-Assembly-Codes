## Lab 7 | Questions
1. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider a direct mapped cache of size 16 bytes with block size 4 bytes. The size of main memory is 256 bytes. Find Number of bits in tag, index and offset. The processor generates requests  as follows 
      1,4,8,5,14,11,13,38,9,B,4,2B,5,6,9,11.
Find hit rate and miss rate.

2. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider a direct mapped cache of size 16 KB with block size 256 bytes. The size of main memory is 128 KB. Find Number of bits in tag. Randomly generate 10 addresses and find hit rate and miss rate.

3. Use PARACACHE SIMULATOR for the exercise for the following configuration. A computer system uses 16-bit memory addresses. It has a 2K-byte cache organized in a direct-mapped manner with 64 bytes per cache block. Assume that the size of each memory word is 1 byte.<br>
a. Calculate the number of bits in each of the Tag, Block, and Word fields of the memory address.<br>
b. When a program is executed, the processor reads data sequentially from the following word addresses: 128, 144, 2176, 2180, 128, 2176
All the above addresses are shown in decimal values. Assume that the cache is initially empty. For each of the above addresses, indicate whether the cache access will result in a hit or a miss.<br>
Note: Convert the given decimal values to hexadecimal before executing on paracache.


4. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider a 2-way set associative cache of size 16 KB with block size 256 bytes. The size of main memory is 128 KB. Find Number of bits in tag.
Randomly generate 10 addresses and find hit rate and miss rate.

5. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider a main memory having 64 byte capacity and cache memory of 8 bytes initially empty. The following addresses are generated by the CPU. All values in hexadecimal - 0,3,4,1,2,5,7,6,0,3,1,11,5,15,9,4,0,4,3
Clearly label data that is replaced in cache lines
Show the cache memory table and filled data in the cache lines of block size 1 byte. The cache is mapped as Direct Mapped.

6. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider a fully associative mapped cache of size 16 KB with block size 256 bytes. The size of main memory is 128 KB. Find number of tag bits.<br> 
a. Use LRU replacement policy calculate the hit ratio and miss ratio for the following sequence: 
0,1,2,3,4,5,6,7,0,1,2,8,10,15,15,12 
<br>b. Use FIFO replacement policy calculate the hit ratio and miss ratio for the following sequence: 
0,1,2,3,4,5,6,7,0,1,2,8,10,15,15,12 

7. Use PARACACHE SIMULATOR for the exercise for the following configuration. Consider the following cache design: main memory having 
32 bytes, cache memory of 8 bytes, block size is 1 byte. Use LRU replacement policy, using fully associative cache calculate the hit ratio and miss ratio for the following sequence: 
0,1,2,3,4,5,6,7,0,1,2,8,10,15,15,12


Note: For all the questions make sure you remove the default value (if needed) while loading the sequence of values.

