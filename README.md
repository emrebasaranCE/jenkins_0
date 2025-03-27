# Jenkins

Hi! In this repository, I'll share my **Jenkins adventure** as I learn and build things.

What is jenkins, lets answer that first.  

### What is Jenkins?

As i can see for now, its a tool that lets you automate a lot of things.  

Currently, I’m following a course on Udemy, and my tutor created a CentOS VM and connected to it via SSH. According to GPT, this is a practical approach, especially since we’ll mostly be using cloud providers, and those environments are typically Linux-based.

And i have to admit, setting up CentOs as a vm was a pain in the arse. There was always some problem. Which is okey for me, by getting this erros, i think that i learn a lot but it doesn't change the fact that its annoying.

As we get back to jenkins, we used docker for using jenkins which makes sense since we are working from our browser. Jenkins is just a backend tool with gui in localhost. With this gui, you can create and configure jobs I think that’s the core idea of Jenkins, creating and configuring jobs through its GUI. I created basic bash script as a job and printed out some information. Which is cool thing to see of course. I am curious what will i see in the future, what can i do that with that information...

For educational purposes, we created mysql container inside our vm with another container named remote-host. While creating this containers, our aim is to make automation. Through jenkins, we are connecting to the remote-host container. And from this container, we are creating a backup for our mysql server and sending this to our aws s3.


On AWS side we just created a s3 bucket for our files. After we created a simple bash like [script.sh](./script.sh). With this script, you can easily send files to your bucket.


### Final Thoughts

In this project, I got hands-on experience with:
- Jenkins setup
- Docker containers
- Remote scripting over SSH
- AWS S3 integration

