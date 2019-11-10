
#!/bin/bash 

file=$1
export IFS=';'
while read Vmname       tailledisque    memoire nombrecpu       nic1    nic2    nic3
do
        ansible-playbook task.yml -e "vmname=${Vmname}  tailledisque=${tailledisque} memoire=${memoire} nombrecpu=${nombrecpu}"
done < $file

