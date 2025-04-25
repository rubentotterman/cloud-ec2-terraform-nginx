 Deploying a Web Server on AWS with Terraform (Nginx + CloudWatch)

This project automates the deployment of a secure, monitored web server on AWS using Terraform. It provisions an EC2 instance, installs Nginx, sets up security groups, and configures CloudWatch for monitoring — all through code.

---

 💻 Technologies Used

- Terraform – Infrastructure as Code (IaC)
- AWS EC2 – Virtual Linux server (Ubuntu)
- Nginx – Web server (installed via `user_data`)
- CloudWatch Agent – System metrics (CPU, Memory)
- Ubuntu 24.04 – Base OS
- Git & GitHub – Version control & collaboration

---

What This Project Does

- Creates an EC2 instance in `eu-north-1` (Stockholm)
- Sets up Nginx automatically with `user_data`
- Opens port `80` (HTTP) and `22` (SSH)
- Installs and configures CloudWatch agent
- Tracks CPU and memory usage in AWS Console
- Pushes all code and config to GitHub

---

How to Use

1. Clone the repo
2. Create an AWS key pair and configure your CLI:
   ```bash
   aws configure
Deploy it all:

bash
Copy
Edit
terraform init
terraform apply
Visit your server:

cpp
Copy
Edit
http://<your-ec2-public-ip>
SSH in if needed:

bash
Copy
Edit
ssh -i ~/.ssh/your-key.pem ubuntu@<your-ec2-public-ip>
CloudWatch Metrics
View real-time usage:

CPU: cpu_usage_idle

Memory: mem_used_percent

Go to AWS Console → CloudWatch → Metrics → CWAgent → InstanceId

📷 Screenshots

EC2 Running	Nginx Web Server	CloudWatch Metrics
(Replace with your actual screenshots inside a screenshots/ folder)

What I Learned
How to write clean and modular Terraform configs

How to automate server provisioning on AWS

How to monitor Linux system metrics with CloudWatch

How to push real-world cloud projects to GitHub the right way

Why This Project Matters
This project mirrors real-world tasks performed by:

Cloud Engineers

DevOps Engineers

Platform Teams

SOC Analysts (when extended with log forwarding)

It demonstrates comfort with Linux, AWS, and Terraform — and it’s 100% replicable from scratch.

🧵 Next Steps
Add TLS (HTTPS) via Let's Encrypt + Certbot

Add Route 53 for custom domain

Add S3 + CloudFront for static content

Create an auto-scaling group w/ launch template

🗂 Repo Structure
cpp
Copy
Edit
.
├── main.tf
├── output.tf
├── install-nginx.sh
├── variables.tf (optional)
├── .gitignore
├── README.md
└── screenshots/

🙌 Want to Try It Yourself?
You can fork this repo and spin it up in your own AWS Free Tier account in 10 minutes 🚀

yaml
Copy
Edit

---
