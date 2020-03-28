create ec2 volume
```
---
# Description to create a new volume in EC2 instance

- hosts: localhost
  connection: local

  vars:
    instance_id: 'i-xxx'
    vol_tags:
      tag1: 'layhua-test-data8'
      tag2: 'qa'


  tasks:

  - name: create ec2 volume
    ec2_vol:
      instance: "{{ instance_id }}"
      volume_size: 25
      volume_type: gp2
      device_name: /dev/sdf
      zone: "us-west-2a"
      region: "us-west-2"
      tags: "{{ vol_tags }}"
 ```
