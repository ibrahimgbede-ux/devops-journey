## Python CI Pipeline with GitHub Actions

### Project Overview
I demonstared how to configure Continuous Integreation (CI), using Python, pytest and GitHub Actions. I built a calculator function in Python and configured GitHub Actions to automate test execution, which reduces the potential for unnoticed bugs and repetitive manual testing.

I wanted to be able identify bugs as early as possible. There are several benefits to automated testing, such as:

1. Early bug detection supports iterative development.
2. It reduces collaboration friction by automating testing when developers integrate changes into a shared codebase.
3. Shorter feedback loops allow issues to be addressed and when they are identified.

The workflow is triggered by a push or pull request and is executed by the Ubuntu runner. Before test execution, it retrieves source code and installs Python dependencies. pytest check assertion to determine if the actual output is consistent with expected outcome specified in my test. GitHub communicates the result by a green tick or red cross.

### Tools Used
| Tool | Purpose |
|------|---------|
| Python | Used to write the calculator function (calculator.py) & test calculator (test_Calculator.py). |
| pytest | Used to run the test, using 'assertion'.|
| Git | Used for version control; to track the changes made on my code. |
| GitHub | Used to host git repositories. |
| GitHub Actions | Used to automate the workflow YAML workflow. |
| YAML | Used to define the workflow instructions; actions to be taken and their order.|

### Project Structure
CICD/
├── .github/
│   └── workflows/
│       └── ci.yml
└── python-ci/
    ├── calculator.py
    ├── test_calculator.py
    ├── requirements.txt
    ├── .gitignore
    └── README.md

#### How the CI Pipeline Works
1. **Trigger**	GitHub Actions is started by a push or pull request.
2. **Runner**	Github provides a runner(virtual machine) & uses Ubuntu to execute the workflow.
3. **Checkout**	actions/checkout retrieves the repository's source code and makes it available on the runner. Without access to the files, the runner cannot execute the test.
4. **Setup**	Python depedencies are installed to prepare the runner for testing.
5. **Testing**  pytest tests the function and reports whether the assert is correct or not.

### Running Tests Locally
Another developer can run tests locally by:
1. Creating a virtual enviroment python-ci(directory where requirements.txt exist): python -m venv .venv
2. Activate the virtual environment: source ./myvenv/bin/activate 
3. Install packages located requirements.tx: pip install -r requirements.txt
4. Run the test: pytest -v test_calculator.py

### Challenges
1. GitHub wasn't running my tests:
I had two files name ci.yml. The newer one was in the wrong, not under .github/workflows/ so GitHub Actions was executing my old testflow. I solved this by pasting the new workflow content into the old file, which was in the correct location.

2. Checking if pytest detects broken code (regressions)
I changed my original function from: return a + b, to return a - b whilst keeping the original assert check the same. When I ran the test is failed as expected and after correcting the test passed.

![alt text](<Screenshot 2026-11-12 203325.png>)

3. Managing virtual environments:
I learned how to manage virtual enviroments and requirements.txt and better understood how developers can clone the environment and avert compatibility issues.