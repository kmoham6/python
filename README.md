<!-- Copyright (c) 2020 Louisiana State University      -->
<!-- Copyright (c) 2020 karame                          -->

## python dockerfile
This project in python is used to automate generating *Dockerfile*. This script  installs the OS dependecies and builds applications. Once the python code is ran, an image and the associated dockerfile would be generated. By running the container, user can connect to the dockerfile. 

To start, some variable are passed as an argument. The arguments used are: 
* **Linux Distribution** : User selects OS among *Ubuntu* or *Fedora*. Based on the selected OS, all dependecies will be installed and the image will be generated. 

* **Build Type** : User selects the build mode among *debug* or *release*. Based on the build mode, image will be generated. The default build type is debug. 
* **Adding User** : User name can be added to the image. The default name is *Stellar*. 
* **Build Environmnet** : User can choose the environment among *C++* or *python*. Based on selected environment, the image will be built. 
* **Build Path** : source directory is another argument. A default path has been passed as an argument. 

### Applications 

In this project, some application can be built. Users can choose based on their needs. 
These applications are : **HPX**, **Blaze**, **Blaze Tensor**, **Phylanx**  


### How to use: 




### Example:
Here there is a an example of the dockerfile I built with the hpx installed. This shows the dockerfile connected and the hpx example project. 
