# DuckDB Performance Testing

I decided to compare DuckDB performance between Windows Server 2025 and Ubuntu Linux 24.04 running in WSL2 on the same Windows Server 2025 installation.

On both Windows and Linux, I generated my own TPC-H SF100 file inside a local directory (on C: for Windows, and on the /home partition for Linux)

Each test was run twice and the second run is reported here.

The test was conducted by running each TPC-H script in order, and measuring the total CPU time and Elapsed time for all scripts.

## Results

See [res.csv](res.csv) for the detailed results including computer specs.

### Elapsed Time

<img src="elapsed.svg">

## CPU Time

<img src="cpu.svg">

## Average Concurrent Threads

<img src="concurrent.svg">
