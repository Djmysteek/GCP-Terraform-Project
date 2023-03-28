resource "jenkins_job" "terraform-job" {
  name   = "jenkins-terraform"
  config = <<-XML
    <project>
      <description>Terraform Job</description>
      <builders>
        <hudson.tasks.Shell>
          <command>
            cd /home/jenkins/terraform
            terraform init
            terraform plan
            terraform apply -auto-approve
          </command>
        </hudson.tasks.Shell>
      </builders>
    </project>
  XML
}