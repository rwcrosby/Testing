FROM mathworks/matlab:r2023b

RUN wget https://www.mathworks.com/mpm/glnxa64/mpm && \
    chmod +x mpm

RUN sudo ./mpm install --release=r2023b --destination=/opt/matlab/R2023b --products=MATLAB_Coder Embedded_Coder

WORKDIR /workspace

# The following will generally work in wsl and linux vm environments
# it will NOT work in pvlvdi environemts, for those environments the uid:gid should be overridden
RUN sudo groupmod -g 1002 matlab
RUN sudo usermod -u 1001 matlab

# Clear the entrypoint set by the mathworks base image
ENTRYPOINT []