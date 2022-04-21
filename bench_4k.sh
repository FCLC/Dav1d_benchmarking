#!/bin/bash

echo "bench_4k.sh"
echo ""
echo "base"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask 0
echo ""
echo "sse2"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask sse2
echo ""
echo "sse41"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask sse41
echo ""
echo "avx2"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask avx2
echo ""
echo "avx512icl"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask avx512icl
echo ""
echo "All available"
dav1d -i source_4k_sdr.mkv --muxer null --threads 16 --filmgrain 0 --cpumask -1
echo ""


