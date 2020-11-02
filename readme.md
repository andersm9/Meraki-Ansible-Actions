# Introduction

This project provides a simple example of using tools traditinally used for software development and applying them in the context of networking. The objective is to provide an environment where changes can be made across your IT environment in an agile manner, where your network’s configuration operational status is automatically evaluated.

This project uses the following tools:

* Github Actions
* Ansible
* Meraki MX Appliance
* AWS EC2 instance


# Tools overview
## Github Actions
GitHub Actions help you automate tasks within your development life cycle. GitHub Actions are event-driven, meaning that you can run a series of commands after a specified event has occurred. In this project, we'll be triggering Actions when somebody pushes an update to our configuration files ("config.yaml" or "playbook.yml"). This event will trigger the actions defined in ".github/workflows/main.yml"

## header 2
list item 1
list item 2

# header 1

## header 2

### header 3
    Highlighted text

### header 3
    more highlighted text
 

# Create a file "credentials.ini" with the following contents:

[camera]

#comment

some delimited text = \*\*rtsp:\/\/\<camera IP>/live\*\*
    
#e.g.host = rtsp://192.168.127.29:9000/live

## Launch the script:

    $python3 MV_OpenCV.py
## link to local .png
![Diagram](images/Picture2.png)


