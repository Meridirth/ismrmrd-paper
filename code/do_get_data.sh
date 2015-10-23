#!/bin/sh

# Generate synthetic data using C++ program
ismrmrd_generate_cartesian_shepp_logan -m 512 -o synth.h5

# Copy the scanner data here
curl -L -o ismrmrd_data.zip https://github.com/ismrmrd/ismrmrd/releases/download/v1.2.3-data/ismrmrd_data.zip
unzip ismrmrd_data.zip
find ismrmrd_data -name "*.h5" -exec cp {} . \; -print






