@echo off
echo.
rem This file is to be used with CP4BA 21.0.3 enterprise deployment with a co-deployed gitea to deploy the Client Onboarding scenario and associated labs
rem Replace all placeholders that are represented with <text> labels before executing this file
java -Xms4096M -jar <TIMESTAMP>_DeploymentAutomation.jar -bootstrapURL=https://api.github.com/repos/IBM/cp4ba-client-onboarding-scenario/contents/21.0.3/Deployment_Automation/Enterprise -ocpAdminURL=<ocpAdminURL> -ocpAdminToken=<ocpAdminToken> -installBasePath=/Enterprise -config=config-deploy -automationScript=DeployClientOnboardingEmbeddedGitea.json -cp4baAdminPwd=<CP4BA admin user pwd> -giteaUserName=<gitea user if different from CP4BA admin user otherwise remove> -giteaUserPwd=<gitea pwd if different from CP4BA admin pwd otherwise remove> ACTION_wf_cp_adpEnabled=true ACTION_wf_cp_emailID=<gmail email address> ACTION_wf_cp_emailPassword=<gmail app key> ACTION_wf_cp_rpaBotExecutionUser=<user for which to call RPA bot> ACTION_wf_cp_rpaServer=<RPA server https port>