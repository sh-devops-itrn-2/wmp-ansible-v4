default:
	git pull
	ansible-playbook -i ${COMPONENT}-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=${COMPONENT}

all: frontend postgresql auth-service portfolio-service analytics-service

database: postgresql
apps: frontend auth-service portfolio-service analytics-service

frontend:
	ansible-playbook -i frontend-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=frontend -e env=dev
postgresql:
	ansible-playbook -i postgresql-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=postgresql -e env=dev
auth-service:
	ansible-playbook -i auth-service-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=auth-service -e env=dev
portfolio-service:
	ansible-playbook -i portfolio-service-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=portfolio-service -e env=dev
analytics-service:
	ansible-playbook -i analytics-service-dev.mohdshuja.com, -e ansible_user=ec2-user -e ansible_password=DevOps321 main.yml -e COMPONENT=analytics-service -e env=dev
