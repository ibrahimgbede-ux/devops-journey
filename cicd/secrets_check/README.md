## Project Overview
My aim was to create an automated GitHub Actions workflow that checks whether a repository secret has been successfully passed into an environment variable.


## Technologies Used

- GitHub Actions
- YAML
- Bash
- GitHub Secrets


## Implementation

1. The workflow is configured to funtion once the code is pushed into Github.
2. GitHub Actions provisions an Ubuntu runner to execute the job.
3. GitHub Actions retrieves the value of the repository secret MY_API_KEY and assigns it to the environment variable API_KEY for that step.
4. Bash inspects whether API_KEY contains a non-empty value.
5. GitHub Actions records a success or failure.


## Challenges & Troubleshooting

Problem: After I pushed my workflow to GitHub Actions I realised it failed.
Upon inspection I noticed the error code in GitHub stating "The secret does not exist"
I reviewed my GitHub seceret configuration and noticed the issue was a discrepancy in naming.
My workflow referenced secrets.API_KEY, but I named it MY_API_KEY in the repository.

After making this change, I pushed it into GitHub and my workflow was successful!


## Results & Evidence

The workflow completed successfully.

GitHub Actions log confirmed the enviromment variable does contain a value.


## Key Lessons

Through this project I learned a number of important DevOps concepts:
1. CI/CD Automations:
I learned how GitHub Actions automates a workflow in response to a push trigger.

2. Workflow Structure: 
I learned about the various elements within a workflow file and the role they plan in 
preparing an automation, all which are reducing manual steps, allowing early error detection
and promoting consistency.

3. Secrets:
I learned how to create and reference a secret as an environment variable, without revealing
sensitive credentials in order to maintain security.

4. Bash Scripting:
I used the conditional operator -n to check if my variable was my environment variable contained a value.
I also used an exit code to indicate whether or not the workflow was successful.

