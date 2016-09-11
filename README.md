# vagrantExercise1

![alt tag](https://github.com/yorjaggy/vagrantExercise1/blob/master/cookbooks/img1.png)

In this exercise we use vagrant for provide a environment like the showed in the imagen 1: Two web servers, a database in postgres and a load balancer. 

The version of vagrant used for this exercise is (xxx), the version of centos used was the (xxx) and the host machine was a ubuntu 14.04 with the next specifications. 
- 8GB of RAM 
- Video card dedicated xxx 
- Intel Core xx 

We implement 4 cookbooks: 
- **mirror**: in this cookbook we change the mirror in the centos_Base.repo, due to restrictions in the network which we were using. **_(We suggest you comment the line in the vagrantfile, which indicate to vagrant to use this cookbook)_** 
- **apache**: in this we install apache, we configure the ports restrictions in the iptables and the start of the services. 
- **haproxy**: in this cookbook, we install haproxy, we configure the machines to balance and the ports restrictions in the iptables. 
- **postgres**: in this, we install the postgres database, we configure the schema, the iptables permissions, we indicated which clients are allowed to authenticated to the database and we configure the start of the services.

To run this exercise, clone this repository and realize the "vagrant up" command, remember to use an image of CentOs6.4. If the process end succesfully you will be able to connect via ssh to some of the virtual machines created. In other cases you have to check in your configurations allow you to created this environment.
