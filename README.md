# Cloud Trainee Notes
Ideas for improving CSC Docs ([Source](https://github.com/CSCfi/csc-user-guide)), especially the cloud documentation.

## Overview
Currently, the documentation has excellent informational content for users who already understand the basics of cloud computing. However, we can improve the documentation by structuring it such that it is easier for beginners to understand and get started with cloud computing. Also, we should add guidance to the home for users about how to read the documentation.

We should treat documentation as essential as other products and services. If users have difficulties getting started, they probably won't. Also, great documentation decreases the burden for customer service.


## Home Page
**Home page** should instruct users on how to read the documentation. We should avoid unnecessary, advanced, or too specific content on the home page.

- Remove unnecessary content: *Banner*, *Quick Links*, *What's New*
- Write a high-level overview text and add instructions for reading *Accounts*, *Computing*, *Cloud*, and *Data* sections. Explain what users can expect to find under each section? What is relevant information for getting started?
- Mention the Linux CLI tutorial and why Linux is relevant.
- Borrow elements from `research.csc.fi/computing`?


## Structure
We should **structure** the documentation such that it is easy for beginners to get started. Beginners don't know what relevant information for getting started is. Hence, we should avoid burdening them with details that are not required for getting started.

We should **order** the documentation content such that the relevant information for getting started is before the advanced information. For example, beginners don't need to concern themselves with virtual machine flavor or billing units. Instead, they need the information to set up a basic virtual machine with the right security groups (e.g., SSH, HTTP) for deploying an application.

Getting started guide should only have the necessary details for developing and deploying a simple working application to the cloud. The working application should not be too trivial like a static web page but include static and dynamic components.


## Application Development and Cloud Deployment
Here are some ideas for high-level instructions on learning web application development and deploying to the cloud in practice. Modeled after [jaantollander/GenieWebApp.jl](https://github.com/jaantollander/GenieWebApp.jl) and its [documentation](https://jaantollander.github.io/GenieWebApp.jl/dev/).

---

**Requirements**: Basic understanding of the following software.

- Linux operating system
- Command-line interface (CLI), Bash, shell scripting
- Git version control system
- Programming language with a web framework

---

**Principles**: Tutorial should progress from simple and manual to complex and automated.

- Start with a local environment, progress to a cloud environment.
- Start with a virtual machine, progress to a container platform.
- Start with manual deployment, progress to automated deployment.
- Start with an on-disk database, progress to a client-server database.

---

**Application Development**: The best way for getting started is to create a web application from scratch using a framework (e.g., Django, Rails, Angular, Lavarel). It is essential to start from scratch to learn how web applications operate. We can use the application to explore fundamental web technologies like HTTP and REST APIs and how applications interact with users and databases. Also, understanding how to use APIs programmatically is important.

---

**Pouta Deployment**: We can manually set up a virtual machine (Ubuntu is easiest) on Pouta using the OpenStack web interface and deploy the application using the command-line interface. Set up a virtual machine with security groups and persistent storage. Then, connect to the virtual machine using SSH, set up the application, mount persistent storage, set up a reverse proxy (e.g., Nginx), and TLS encryption for HTTPS with let's encrypt.

- We should better explain security groups.

---

**Rahti Deployment**: We need to create a (Docker) container to deploy an application to a container platform. Test the container by running it locally. Then, tag and push the container to the Rahti image registry. Finally, deploy the application from the container image. Set up routes and persistent storage.

- We should better explain how to set up OpenShift permissions inside a container. Permissions can be challenging to configure properly. For example, the container may work fine locally but not on OpenShift.
- Is there a better way to test if the container works on OpenShift than having to deploy it?
- Change to OKD4 will significantly improve the web user interface.
