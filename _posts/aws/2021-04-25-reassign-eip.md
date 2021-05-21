---
title: Reassigning EIP on an EC2 instance to another  
date : 2021-04-25 23:00  
categories:  AWS  
tags: AWS ShellScript    
// toc: true  
comments : true  
author_profile: true
---

I created a script to reassign EIP(Elastic IP) on a specific EC2 instance to another.    
See [darkchoco/reassign_eip.sh](https://gist.github.com/darkchoco/3247fef5b22bc5373f476b9161fdd435).

EIP is being charged if it's not used, so I can't have many.  
And I need some fixed IP addresses that can be assigned to several EC2 instances dynamically. (mainly due to access via Web browser)   

I have secured some EIPs and reassigned to EC2 instances via AWS console whenever I need. Now with this small script I am able to do it without leaving CLI.
