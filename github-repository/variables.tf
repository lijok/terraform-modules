variable "name" {
  description = "Name of the repository to create"
  type        = string
}

variable "description" {
  description = "Description of the repository to create"
  type        = string
  default     = ""
}

variable "homepage_url" {
  description = "Homepage of the project"
  type        = string
  default     = ""
}

variable "visibility" {
  description = "Visibility of the repository. One of: public, private, internal. Internal only available on GitHub Enterprise Server 2.20+."
  type        = string
  default     = "private"

  validation {
    condition     = contains(["public", "private", "internal"], var.visibility)
    error_message = "Visibility must be one of public, private, internal."
  }
}

//variable "enable_issues" {
//  description = "Flag to enable issues on the repository"
//  type        = bool
//  default     = false
//}
//
//variable "enable_projects" {
//  description = "Flag to enable projects on the repository"
//  type        = bool
//  default     = false
//}
//
//variable "enable_wiki" {
//  description = "Flag to enable wiki on the repository"
//  type        = bool
//  default     = false
//}
//
//variable "enable_downloads" {
//  description = "Flag to enable downloads on the repository"
//  type        = bool
//  default     = false
//}

variable "is_template" {
  description = "Mark this repository as a template repository"
  type        = bool
  default     = false
}

//variable "allow_merge_commit" {
//  description = "Flag to enable merge commits"
//  type        = bool
//  default     = true
//}
//
//variable "allow_squash_commit" {
//  description = "Flag to enable squash commits"
//  type        = bool
//  default     = false
//}
//
//variable "allow_rebase_merge" {
//  description = "Flag to enable rebase merges"
//  type        = bool
//  default     = false
//}
//
//variable "allow_auto_merge" {
//  description = "Flag to enable auto merge"
//  type        = bool
//  default     = false
//}

//variable "delete_branch_on_merge" {
//  description = "Flag to delete branches on merge"
//  type        = bool
//  default     = false
//}

variable "archived" {
  description = "Mark the repository as archived"
  type        = bool
  default     = false
}

//variable "archive_on_destroy" {
//  description = "When destroying the repository, archive it"
//  type        = bool
//  default     = false
//}
//
//variable "enable_vulnerability_alerts" {
//  description = "Flag to enable merge commits"
//  type        = bool
//  default     = false
//}

variable "template_owner" {
  description = "Owner of the template repository from which to create this repository"
  type        = string
  default     = null
}

variable "template_repository" {
  description = "Name of the template repository from which to create this repository"
  type        = string
  default     = null
}
