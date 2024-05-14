FROM pytorch/pytorch:2.2.2-cuda12.1-cudnn8-devel

RUN apt update && apt install --no-install-recommends -y git

ENV TORCH_CUDA_ARCH_LIST="8.6+PTX"

# Set the working directory in the container
WORKDIR /usr/src/app

# Install any needed packages specified in requirements.txt
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Install Python dependencies
RUN pip install open-interpreter


# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run jupyter notebook when the container launches
CMD ["jupyter", "notebook", "--ip='*'", "--port=8888", "--no-browser", "--allow-root"]