### 1 .What is CI/CD? 

CI/CD stands for Continuous Integration and Continuous Deployment.
Are software development practices for automating three aspects:
1) Building code. 
2) Testing code.
3) Deploying code.

CI refers to continuously merging changes into a common repository, which triggers automated building and test. 
Wheres CD is the automated deployment of apps or features subsequent to passing tests. 

## 2. Benefits of CI/CD

There are a number of key benefits to CI/CD including:
1) Speed.
2) Quality enhanced.
3) Risk reduction.
4) Improved collaboration.
5) Consistency.
6) Continuous feedback.

## 3. Tools used

1) ci.yml
2) Ubuntu
3) GitActions

## 4. How my pipeline works

Being my first pipeline it is configured to print a message confirming the automation works.
1) I pushed my ci.yml configuration file to Github.
2) This push triggered triggered the workflow in GitActions.
3) The runner in Ubuntu was located 
5) The command is succesfully executed.

## 5. Concepts learned

1) Workflows.
2) YAML.
3) GitHub Actions.

## 6. Evidence
<img width="820" height="355" alt="Screenshot 2026-11-02 201236" src="https://github.com/user-attachments/assets/84d2713e-4dfb-4329-aff1-ac1a28e67a3e" />
<img width="1403" height="138" alt="Screenshot 2026-11-02 064935" src="https://github.com/user-attachments/assets/b96e266b-d03b-41ac-90c8-70034c041ccb" />



## 7. Challenges and solutions

My workflow file was visible locally, but not in my Github repository.
I committed the change but forgot to push it to the remote repository.
I solved using git push.

