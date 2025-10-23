<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Web App Deployment with AWS CI/CD - Wasim Hassan</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px 40px;
        }

        .container {
            background: white;
            border-radius: 20px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
            max-width: 1400px;
            width: 100%;
            padding: 40px 50px;
            animation: slideIn 0.6s ease-out;
            position: relative;
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .top-right-info {
            position: absolute;
            top: 25px;
            right: 40px;
            text-align: right;
        }

        .developer-name {
            font-size: 1.1em;
            font-weight: 600;
            color: #667eea;
            margin-bottom: 8px;
        }

        .project-note {
            font-size: 0.85em;
            color: #666;
            margin-bottom: 10px;
            max-width: 280px;
        }

        .github-link {
            display: inline-block;
            padding: 8px 20px;
            background: #24292e;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 0.9em;
            transition: background 0.3s ease;
        }

        .github-link:hover {
            background: #0366d6;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: #667eea;
            font-size: 2.2em;
            margin-bottom: 8px;
        }

        .header p {
            color: #666;
            font-size: 1.1em;
        }

        .main-content {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 30px;
            align-items: start;
        }

        .status-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 25px;
            border-radius: 15px;
            text-align: center;
            grid-column: 1 / -1;
        }

        .status-card h2 {
            font-size: 1.6em;
            margin-bottom: 10px;
        }

        .info-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
        }

        .info-item {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 10px;
            border-left: 4px solid #667eea;
            transition: transform 0.3s ease;
        }

        .info-item:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .info-item h3 {
            color: #667eea;
            margin-bottom: 8px;
            font-size: 1em;
        }

        .info-item p {
            color: #555;
            line-height: 1.5;
            font-size: 0.9em;
        }

        .tech-section {
            background: #f8f9fa;
            padding: 25px;
            border-radius: 10px;
        }

        .tech-section h3 {
            color: #667eea;
            margin-bottom: 15px;
            font-size: 1.2em;
            text-align: center;
        }

        .tech-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 8px;
            justify-content: center;
            margin-bottom: 20px;
        }

        .tech-badge {
            background: #667eea;
            color: white;
            padding: 6px 16px;
            border-radius: 20px;
            font-size: 0.85em;
            font-weight: 600;
        }

        .deployment-message {
            text-align: center;
            margin-top: 20px;
            padding: 15px;
            background: #e8f4f8;
            border-radius: 8px;
            border-left: 4px solid #667eea;
        }

        .deployment-message p {
            color: #555;
            line-height: 1.6;
            margin-bottom: 8px;
        }

        .deployment-message p:last-child {
            margin-bottom: 0;
        }

        .nextwork-credit {
            text-align: center;
            margin-top: 20px;
            padding-top: 15px;
            border-top: 2px solid #eee;
            color: #666;
            font-size: 0.9em;
        }

        .nextwork-credit a {
            color: #667eea;
            text-decoration: none;
            font-weight: 600;
        }

        .nextwork-credit a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="top-right-info">
            <div class="developer-name">👨‍💻 Wasim Hassan</div>
            <p class="project-note">Enterprise-level DevOps practices with AWS cloud services</p>
            <a href="https://github.com/wasim-hassan/nextwork-web-project" class="github-link" target="_blank">
                View on GitHub
            </a>
        </div>

        <div class="header">
            <h1>🚀 Java Web App Deployment</h1>
            <p>Automated CI/CD Pipeline with AWS</p>
        </div>

        <div class="main-content">
            <div style="grid-column: 1 / -1;">
                <div class="status-card">
                    <h2>✅ Application Successfully Deployed</h2>
                </div>
            </div>

            <div class="info-grid">
                <div class="info-item">
                    <h3>📦 Build & Compile</h3>
                    <p>Source code compiled with Maven, tests executed, and deployment packages generated via AWS CodeBuild</p>
                </div>

                <div class="info-item">
                    <h3>☁️ Cloud Infrastructure</h3>
                    <p>Developed and deployed on Amazon EC2 virtual servers with complete cloud-based workflow</p>
                </div>

                <div class="info-item">
                    <h3>🔄 Automated Pipeline</h3>
                    <p>AWS CodePipeline orchestrates the entire flow from GitHub to deployment across EC2 instances</p>
                </div>

                <div class="info-item">
                    <h3>📦 Artifact Management</h3>
                    <p>AWS CodeArtifact manages dependencies and build artifacts for high availability and faster builds</p>
                </div>

                <div class="info-item">
                    <h3>🚀 Deployment Automation</h3>
                    <p>AWS CodeDeploy handles automated deployment process across multiple EC2 instances</p>
                </div>

                <div class="info-item">
                    <h3>💻 Development Environment</h3>
                    <p>VS Code connected to EC2 instance for seamless cloud-based development and file management</p>
                </div>
            </div>

            <div class="tech-section">
                <h3>🛠️ Technology Stack</h3>
                <div class="tech-stack">
                    <span class="tech-badge">Java</span>
                    <span class="tech-badge">JSP/Servlet</span>
                    <span class="tech-badge">Maven</span>
                    <span class="tech-badge">AWS EC2</span>
                    <span class="tech-badge">AWS CodePipeline</span>
                    <span class="tech-badge">AWS CodeBuild</span>
                    <span class="tech-badge">AWS CodeDeploy</span>
                    <span class="tech-badge">AWS CodeArtifact</span>
                    <span class="tech-badge">GitHub</span>
                    <span class="tech-badge">VS Code</span>
                    <span class="tech-badge">Git</span>
                    <span class="tech-badge">SSH</span>
                </div>
                
                <div class="deployment-message">
                    <p><strong>Hello Wasim!</strong></p>
                    <p>This is my NextWork web application working!</p>
                    <p>If you see this line in Github, that means your latest changes are getting pushed to your cloud repo :o</p>
                </div>
            </div>
        </div>

        <div class="nextwork-credit">
            Project completed as part of <a href="https://learn.nextwork.org/projects/aws-devops-cicd" target="_blank">NextWork</a> DevOps series
        </div>
    </div>
</body>
</html>
