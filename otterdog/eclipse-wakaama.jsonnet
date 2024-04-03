local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-wakaama') {
  settings+: {
    description: "Eclipse Wakaama is a C implementation of the Open Mobile Alliance's LightWeight M2M protocol (LWM2M)",
    email: "webmaster@eclipse-foundation.org",
    name: "Eclipse Wakaama",
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
}
