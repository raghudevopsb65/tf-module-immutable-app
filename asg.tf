resource "aws_autoscaling_group" "asg" {
  name                = local.TAG_PREFIX
  desired_capacity    = var.ASG_DESIRED
  max_size            = var.ASG_MAX
  min_size            = var.ASG_MIN
  vpc_zone_identifier = var.PRIVATE_SUBNET_IDS

  launch_template {
    id      = aws_launch_template.launch-template.id
    version = "$Latest"
  }
}
