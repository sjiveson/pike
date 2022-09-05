resource "google_service_account_iam_policy" "pike" {
  service_account_id = "projects/pike-361314/serviceAccounts/pike-361314@appspot.gserviceaccount.com"
  policy_data        = data.google_iam_policy.admin.policy_data
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/iam.serviceAccountUser"

    members = [
      "user:james.woolfenden@gmail.com",
    ]
  }
}
