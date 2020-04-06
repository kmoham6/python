#!/usr/bin/python3
import argparse
import docker
import os 

parser = argparse.ArgumentParser(description='build an environment.')
# set the linux dirtributions
distro = parser.add_mutually_exclusive_group()
distro.add_argument( '-os', "--os", 
                    choices=['ubuntu', 'fedora'],
                    default='fedora',
                    help='builds the image based on selected OS (default: frdora)'
)

#set the build type
parser.add_argument ('-b' , "--build",
                    choices=['debug', 'release'],
                    default= 'debug',
                    help = 'builds in "debug" or "release" mode (default: debug)'
)
parser.add_argument ('-i',"--install", 
                    choices= ['debug' , 'release'],
                    default= 'debug',
                    help= "builds in 'debug' or 'release' mode (default: debug)"

)

#add user 
parser.add_argument ('-u', "--user",
                     choices= ['ste||ar', 'karame'],
                     default= 'ste||ar',
                     help= 'adding user to the image build (default: ste||ar)'
)                     

#set the env
parser.add_argument ( "--env",
                     choices= ['python', 'c++'],
                     help= ' building the image based on python or c++ '
)
args = parser.parse_args()

message = f"""
           From {args.os}
           RUN sudo dnf update
           RUN dnf install -y python3 
           RUN dnf install -y numpy 
           RUN useradd -r -m -g {args.user} -G wheel {args.user}
"""

print (message)

