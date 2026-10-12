# Deploy Smart Payroll to Render

This project is prepared for Render's Docker web service.

1. Upload the contents of this folder to a GitHub repository (root must contain Dockerfile, src/, web/, and data/).
2. In Render choose New + -> Web Service and connect that repository.
3. Select Runtime: Docker; region near your audience; choose a plan.
4. Deploy. Render will provide an `https://...onrender.com` URL when deployment succeeds.

Demo logins: admin / admin123; employee / E1001; employee2 / E1002.

IMPORTANT: This is a college demonstration project, not production-ready. Credentials are hard-coded, sessions are in memory, and CSV files on a standard container filesystem may reset after redeploy/restart. Do not store real employee information. The sample 5% deduction is illustrative only.
