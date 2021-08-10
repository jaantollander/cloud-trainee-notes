# Cloud Trainee Notes
Ideas for how to improve CSC Docs ([Source](https://github.com/CSCfi/csc-user-guide)), especially the cloud documentation.

## Overview
Documentation has great informational content. However, we can improve the documentation by structuring it such that it is easier for beginners to read and get started. We should treat documentation as an essential product, if users have difficulties of getting started they probably won't.


## Home Page
**Home page** should instruct users on how to read the documentation. We should avoid unnecessary, advanced or too specific content there.

- What users can expect to find under each section?
- What is relevant information for getting started?
- Remove unnecessary content: *Quick Links*, *What's New*
- Improve overview and add instructions.
- Borrow elements from `research.csc.fi/computing`?


## Structure
We should **structure** the documentation such that it is easy for beginners to get started. Beginners don't know what is relevant information for getting started. Hence, we should avoid burdening them with details that are not required for getting started.

We should **order** the documentation content such that the relevant information for getting started is before the advanced information. For example: Beginners don't need to concern themselves with virtual machine flavor or billing units. Instead, they need the information to setup a basic virtual machine with the right security groups (e.g. SSH, HTTP).

Getting started guide should only have the necessary details for developing and deploying a simple working application to the cloud. The working application should not be too trivial like a static web page, but include static and dynamic components.


## Application Development and Cloud Deployment
Here are some ideas for high-level instructions on how to learn web application development and deploying to cloud in practice. Modeled after [jaantollander/GenieWebApp.jl](https://github.com/jaantollander/GenieWebApp.jl) and its [documentation](https://jaantollander.github.io/GenieWebApp.jl/dev/).

**Application Development**: Best way for getting started is to create a web application from scratch using a framework (e.g. Django, Rails, Angular, Lavarel). It is essential to start from scratch to learn how web application operate. We can use the application to explore fundamental web technologies like HTTP, and REST APIs, and how applications interact with users and databases. Also, understanding how to use APIs programatically is important.

---

**Pouta Deployment**: We can manually set up a virtual machine (Ubuntu is easiest) on Pouta using OpenStack web interface and deploy the application using command line interface. Set up a virtual machine with security groups and persistent storage. Then, connect to the virtual machine using SSH, set up the application, mount persistent storage, set up reverse proxy (e.g. Nginx) and TLS encryption for HTTPS with let's encrypt.

- We should better explain security groups.

---

**Rahti Deployment**: We need to create a (Docker) container to deploy an application to a container platform. Test the container by running it locally. Then, tag and push the container to Rahti image registry. Deploy the application from the container image. Set up routes and persistent storage.

- We should better explain how to set up OpenShift permissions inside a container. These are a major obstacle for deployment.
- Is there a better way to test if container works on OpenShift than having to deploy it?
