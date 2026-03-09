document.addEventListener('DOMContentLoaded', () => {
    // Clock
    const clockElement = document.getElementById('clock');
    setInterval(() => {
        const now = new Date();
        clockElement.innerText = now.toLocaleTimeString();
    }, 1000);

    // Simulated Log Stream
    const terminal = document.getElementById('terminal-logs');
    const logs = [
        "> Starting deployment cycle...",
        "> Terraform plan: 3 to add, 0 to change, 0 to destroy.",
        "> Creating infrastructure in AWS (Simulated)...",
        "> VPC: vpc-0a1b2c3d created.",
        "> Subnet: subnet-0f1e2d3c created.",
        "> Security Group: sg-enterprise-allow-http created.",
        "> Initializing Docker build context...",
        "> Pulling nginx:stable-alpine image...",
        "> Layer 1/3: EXPOSE 80",
        "> Layer 2/3: COPY app/ /usr/share/nginx/html/",
        "> Image built: enterprise-dashboard:latest",
        "> pushing image to ECR...",
        "> Deployment successful on EC2 node-01.",
        "> Health check passed. Status code 200.",
        "> Monitoring enabled: No anomalies detected.",
    ];

    let logIndex = 3;
    const addLog = () => {
        if (logIndex < logs.length) {
            const p = document.createElement('p');
            p.innerText = logs[logIndex];
            terminal.appendChild(p);
            terminal.scrollTop = terminal.scrollHeight;
            logIndex++;
            setTimeout(addLog, Math.random() * 2000 + 500);
        }
    };

    setTimeout(addLog, 2000);
});
