provider "github" {
    token = "YOUR PAT TOKEN"
}

resource "github_repository" "example" {
  name        = "example"
  description = "My awesome codebase"

  visibility = "public"

}