# Ansible manual

## Set up Ansible

1. start
```
python3 -m venv .
source bin/activate
```
2. Set up modules
```
python3 -m pip install --upgrade pip
pip3 install pynetbox ansible netaddr pytz
ansible-galaxy collection install netbox.netbox
```
3. Set up environment variables for NetBox
```
export NETBOX_TOKEN={{__YOUR_API_TOKEN__}}
export NETBOX_API={{__YOUR_NETBOX_URL__}}
```
4. end
```
deactivate
```

## Sample

1. Create Prefixes to NetBox (dryrun)
```
ansible-playbook create_prefixes_csv.yml --check
```
2. Create IP Addresses to NetBox (dryrun)
```
ansible-playbook create_ip_addresses_csv.yml --check
```