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
* **Application** : Different applications like *hpx*, *blaze*, *blaze-tensor*, *blazemark*, *Pybind11*, *Phylax* based on users' choice woulb be instlled. 

### Applications 

In this project, some application can be built. Users can choose them based on their needs. 
These applications are : **HPX**, **Blaze**, **Blaze Tensor**, **Phylanx**  


### How to use: 
Users can install the applications and choose the arguments based on their OS. 

Some examples : 

*To run ubuntu with the username given group1:*

```sh
./build_docekr_parametric.py --os fedora --user group1
```
*For more information*

```sh
./build_docekr_parametric.py --help 
```

*To run Fedora with hpx*

```sh
./build_docker_parametric.py --os fedora --app hpx
```

### Example: 

Here there is a an example of the dockerfile I built with the hpx installed. This shows the dockerfile connected and the hpx example project. 


![Screenshot from 2020-06-10 00-24-55](https://user-images.githubusercontent.com/47753533/84230534-c4729b80-aab1-11ea-99b6-1c2d56580a6b.png)
