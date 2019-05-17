output "id" {
    value = "${aws_ecr_repository.Test.id}"
}
output "arn" {
    value = "${aws_ecr_repository.Test.arn}"
}

output "registry_id" {
    value = "${aws_ecr_repository.Test.registry_id}"
}
output "repository_url" {
    value = "${aws_ecr_repository.Test.repository_url}"
}

