# Front Page
My idea is that the text answers questions about Computing, Cloud, and Data services in general. For example, what resources different services provide to the user, concrete examples of common uses of the services, and a general comparison between the services so that the user can choose the services they need and understand which sections are necessary in the documentation. The texts are intended to make it easier for the user to choose the right services and get started.

---

* What services CSC offers?
* What problems can cloud services solve for the user?
* What are common use case of the cloud services?

---

High-performance computing, batch computing

- simulations
- training machine learning models
- data science

Cloud computing, interactive computing

- deploy web applications and microservices

---

CSC offers two cloud computing services, Pouta and Rahti. In Pouta, we can run virtual machines. On the other hand, Rahti is a container platform.

On Pouta, users can create virtual machines which feel like running your personal computer. You can install and run the software you want, configure firewalls, and expose it to the internet.

We can use virtual machines to run a web server, run computational tasks that require custom software (if not available on HPC environments), or even as a personal workspace.

A virtual machine contains a full virtual operating system.

Pouta uses OpenStack, which provides an API for managing your virtual machines. We can access them via a web user interface or command-line interface. [You can configure your virtual machine programmatically.]

We can use a virtual machine for general-purpose computing compared to a container platform which is suitable for running containerized software, typically web applications, and microservices. Supercomputers are suitable for computationally demanding batch jobs.

On the Rahti container platform, users can run containerized software such as web applications and microservices. Compared to using virtual machines, a container platform makes the process of deploying a web application more standardized [where application-specific configurations are defined in the container file].

Containerization offers a standardized interface to the application. They are also easier to replicate to recover if a server running as a container dies or we need to scale up our application by creating multiple identical servers.

Virtual machines and containers are a form of operating-system-level virtualization. Virtualization aims to isolate resources used by different users so that multiple users can share hardware resources without being able to access other user's resources without permission.
