@Library('jenkinscommons@master') _

SMPHelmPipeline {
    docker = [
        service_name: "platform-authorisation2"
    ]
    //helm = [
    //  chart_name: "platform-authorisation2",
    //  chart_dir: "platform-authorisation2",
    //  chart_version: "pipeline-default",
    //]
    modules.HelmChartBuild=null

    octopus = [
       space_name: "PlatformServicesDev",
       project_group_name: "Default Project Group",
       project_name: "Platform-Authorisation2",
       project_desc: "Platform-Authorisation2",
       project_lifecycle: "protected-shared-instance-kops-lifecycle",
       variables_yaml: "octopus/deployment-variables.yaml",
       package_dir: "octopus",
       package_name: "platform-authorisation2",
       chart_version: "0.0.157",
    ]
    pre_release_channel = [
        tag: "[\\+]*",
        lifecycle: "protected-shared-instance-kops-lifecycle",
        deployment_packages: "Deploy Helm Upgrade/ValuesPack-1"
    ]

    release_channel = [
        tag: "(^\$)|(release)|(hotfix)",
        lifecycle: "protected-shared-instance-kops-lifecycle",
        deployment_packages: "Deploy Helm Upgrade/ValuesPack-1"
    ]
    metadata = [
        helm_client_version: "14.3-windows-amd64",
        smp_api_gateway_configuration_tool_version: "0.0.37"
    ]
    modules.Veracode = null
    modules.Twistlock = null
}
