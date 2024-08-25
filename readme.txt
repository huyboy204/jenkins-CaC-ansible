This ansible playbook require jenkins.yaml put into ansible role under j2 template
and this also require plugins.yaml in the same directory with playbook.yaml

If you also want to import job from another Jenkins master, you can put .xml template under
directory files/jenkins/jobs/{ name of job }/config.xml

You can get confg.xml file of specific job with jenkins cli, here is command:
# List all jobs:
java -jar jenkins-cli.jar -s http://jenkins-url list-jobs

# Get the config XML for a job:
java -jar jenkins-cli.jar -s http://jenkins-url get-job <job-name>

NOTE: run this command with in the same directoty with jenkins-cli.jar