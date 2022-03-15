## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

Images/Project_1_Network_Diagram.drawio

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the .yml files found in the Ansible folder may be used to install only certain pieces of it, such as Filebeat.

These documents contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
- _TODO: What aspect of security do load balancers protect? What is the advantage of a jump box?_

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- _TODO: What does Filebeat watch for?_
- _TODO: What does Metricbeat record?_

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.1   | Linux            |
| Web-1    | VM       | 10.1.0.5   | Linux            |
| Web-2    | VM       | 10.1.0.6   | Linux            |
|ELK-SERVER| ELK      | 10.0.0.4   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:

194.193.145.166 (my current home IP, subject to change)

Machines within the network can only be accessed by the Jump Box container, Confident_Khorana.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes/No              | 194.193.145.166      |
|          |                     |                      |
|          |                     |                      |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it removes the risk of human error and can be repeated across many machines or VMs with minimal effort.

The playbook implements the following tasks:
- Install Docker
- Install Python 3
- Install DOcker module
- Increase virtual memory, and on restart
- Downloads and launches a DOcker ELK container, and enables service docker on boot

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
10.0.0.1, 10.1.0.5, 10.1.0.6, 10.0.0.4

We have installed the following Beats on these machines:
Metricbeat and Filebeat

These Beats allow us to collect the following information from each machine:
Metricbeat collects metrics from the OS and services running on the server, into specified outputs such as elasticsearch and logstash
Filebeat monitors the log files or locations that you specify, collects log events, and forwards them either to Elasticsearch or Logstash for indexing

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned, SSH into the control node and follow the steps below:
- Copy the elk.yml file to /etc/ansible/elk.yml
- Update the hosts file to include the attribute, such as [elk], then include your destination ip of the ELK server directly below.
- Run the playbook, and navigate to http://[your_elk_server_ip]:5601/app/kibana to check that the installation worked as expected.
