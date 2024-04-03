local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-wakaama') {
  settings+: {
    description: "Eclipse Wakaama is a C implementation of the Open Mobile Alliance's LightWeight M2M protocol (LWM2M)",
    email: "webmaster@eclipse-foundation.org",
    name: "Eclipse Wakaama",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('wakaama') {
      allow_squash_merge: false,
      allow_update_branch: false,
      delete_branch_on_merge: false,
      dependabot_security_updates_enabled: true,
      description: "Eclipse Wakaama is a C implementation of the Open Mobile Alliance's LightWeight M2M protocol (LWM2M).",
      homepage: "",
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      topics+: [
        "c",
        "coap",
        "device-management",
        "eclipseiot",
        "internet-of-things",
        "iot",
        "lwm2m",
        "lwm2m-client",
        "lwm2m-protocol",
        "lwm2m-server"
      ],
      web_commit_signoff_required: false,
      workflows+: {
        default_workflow_permissions: "write",
      },
      secrets: [
        orgs.newRepoSecret('SONAR_TOKEN') {
          value: "********",
        },
      ],
    },
    orgs.newRepo('wakaama-website') {
      allow_merge_commit: true,
      allow_update_branch: false,
      default_branch: "master",
      delete_branch_on_merge: false,
      secret_scanning: "disabled",
      secret_scanning_push_protection: "disabled",
      web_commit_signoff_required: false,
      workflows+: {
        enabled: false,
      },
    },
  ],
}
