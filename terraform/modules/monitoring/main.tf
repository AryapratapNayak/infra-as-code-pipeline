resource "aws_cloudwatch_metric_alarm" "ecs_cpu" {
  count               = var.deploy_service ? 1 : 0
  alarm_name          = "${var.app_name}-ecs-high-cpu"
  alarm_description   = "ECS service average CPU utilization is high"
  namespace           = "AWS/ECS"
  metric_name         = "CPUUtilization"
  statistic           = "Average"
  period              = 300
  evaluation_periods  = 1
  threshold           = 80
  comparison_operator = "GreaterThanThreshold"
  treat_missing_data  = "notBreaching"

  dimensions = {
    ClusterName = var.cluster_name
    ServiceName = var.service_name
  }
}
