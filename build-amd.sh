export RUSTFLAGS="-C target-cpu=native -g"
export FFI_BUILD_FROM_SOURCE=1
#export FFI_USE_CUDA=1
#export FFI_USE_GPU=1
make clean && make lotus lotus-miner lotus-worker lotus-shed
