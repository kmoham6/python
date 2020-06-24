#!/usr/bin/python3
import argparse
import docker
import os

parser = argparse.ArgumentParser(description='build an environment.')
# set the linux dirtributions
distro = parser.add_mutually_exclusive_group()
distro.add_argument(
    '-os',
    "--os",
    choices=['ubuntu', 'fedora'],
    default='fedora',
    help='builds the image based on selected OS (default: fedora)')

# set the build type
parser.add_argument(
    '-b',
    "--build",
    choices=['debug', 'release'],
    default='debug',
    help='builds in "debug" or "release" mode (default: debug)')
parser.add_argument(
    '-i',
    "--install",
    choices=['debug', 'release'],
    default='debug',
    help="builds in 'debug' or 'release' mode (default: debug)")

# add user
parser.add_argument('-u',
                    "--user",
                    choices=['stellar', 'karame'],
                    default='stellar',
                    help='adding user to the image build (default: stellar)')

# set the env
parser.add_argument("--env",
                    choices=['python', 'c++'],
                    help=' building the image based on python or c++ ')
args = parser.parse_args()
package_manager = "dnf" if args.os == "fedora" else "apt"
message = f"""
From {args.os} 
RUN {package_manager} install -y python3
RUN groupadd -r {args.user}
RUN useradd -r -m -g {args.user} -G wheel {args.user}
RUN echo '%wheel ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers 
"""

ubuntu_dep = ["python", "update"]
for i in ubuntu_dep:
    message += f"RUN {package_manager} install -y {i}\n"
print(message)
# write the message in a file called Dockerfile
with open("Dockerfile", 'w') as file:
    for line in message:
        file.write(line)

# build the dockerfile above

docker_client = docker.from_env()

image_tag = "build"
image_name = "{image_name}:{tag}".format(image_name='dockerfile.python',
                                         tag=image_tag)
# #image_name = "dockerfile.python:build"
a = docker_client.images.build(path='/home/karame/repos/python-repo/',
                               tag=image_name)

print(a)
