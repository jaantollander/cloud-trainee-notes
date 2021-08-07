# Notes on Application Development and Cloud Deployment
Ideas for how to improve CSC Docs.

General ideas

* Design the structure and layout of the documentation for beginners.
* Beginners don't know what is relevant information for getting started. For advanced users that is not a problem.
* Instruct users on the home page how to approach reading the documentation. What users can expect to find under each section?

How to learn web application development and cloud computing in practice. High-level intructions:

---

**Application Development**: Best way for getting started is to create a web application from scratch using a framework. It is essential to start from scratch to learn how web application operate. We can use the application to explore fundamental web technologies like HTTP, and REST APIs, and how applications interact with users and databases. Also, understanding how to use APIs programatically is important.

---

**Pouta Deployment**: We can manually set up a virtual machine (Ubuntu is easiest) on Pouta using OpenStack web interface and deploy the application using command line interface. Set up a virtual machine with security groups and persistent storage. Then, connect to the virtual machine using SSH, set up the application, mount persistent storage, set up reverse proxy and TLS encryption for HTTPS with let's encrypt.

- We should better explain security groups.

---

**Rahti Deployment**: We need to create a (Docker) container to deploy an application to a container platform. Test the container by running it locally. Then, tag and push the container to Rahti image registry. Deploy the application from the container image. Set up routes and persistent storage.

- We should better explain how to set up OpenShift permissions inside a container. These are a major obstacle for deployment.
- Is there a better way to test if container works on OpenShift than having to deploy it?
