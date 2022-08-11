resource "github_repository" "this" {
  name                   = var.name
  description            = var.description
  homepage_url           = var.homepage_url
  visibility             = var.visibility
  has_issues             = true
  has_projects           = false
  has_wiki               = false
  has_downloads          = false
  is_template            = var.is_template
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = false
  allow_auto_merge       = true
  delete_branch_on_merge = true
  auto_init              = false
  //  default_branch                          = "master" # deprecated
  archived                                = var.archived
  archive_on_destroy                      = true
  vulnerability_alerts                    = true
  ignore_vulnerability_alerts_during_read = false

  dynamic "template" {
    for_each = var.template_repository == null ? [] : ["this"]

    content {
      owner      = var.template_owner
      repository = var.template_repository
    }
  }
}
