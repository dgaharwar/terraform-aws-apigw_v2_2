variable "region" {}
variable "access_key" {}
variable "secret_key" {}

variable "create" {
  description = "Controls if API Gateway resources should be created"
  type        = bool
  default     = true
}

variable "create_api_gateway" {
  description = "Whether to create API Gateway"
  type        = bool
  default     = true
}

variable "create_default_stage" {
  description = "Whether to create default stage"
  type        = bool
  default     = true
}

variable "create_default_stage_api_mapping" {
  description = "Whether to create default stage API mapping"
  type        = bool
  default     = true
}

variable "create_api_domain_name" {
  description = "Whether to create API domain name resource"
  type        = bool
  default     = true
}

variable "create_routes_and_integrations" {
  description = "Whether to create routes and integrations resources"
  type        = bool
  default     = true
}

variable "create_vpc_link" {
  description = "Whether to create VPC links"
  type        = bool
  default     = true
}

# API Gateway
variable "name" {
  description = "The name of the API"
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the API."
  type        = string
  default     = null
}

variable "default_route_settings" {
  description = "Settings for default route"
  type        = map(string)
  default     = {}
}

variable "disable_execute_api_endpoint" {
  description = "Whether clients can invoke the API by using the default execute-api endpoint. To require that clients use a custom domain name to invoke the API, disable the default endpoint"
  type        = string
  default     = false
}

variable "protocol_type" {
  description = "The API protocol. Valid values: HTTP, WEBSOCKET"
  type        = string
  default     = "HTTP"
}

variable "api_key_selection_expression" {
  description = "An API key selection expression. Valid values: $context.authorizer.usageIdentifierKey, $request.header.x-api-key."
  type        = string
  default     = "request.header.x-api-key"
}

variable "route_key" {
  description = "Part of quick create. Specifies any route key. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "route_selection_expression" {
  description = "The route selection expression for the API."
  type        = string
  default     = "$request.method $request.path"
}

variable "cors_configuration" {
  description = "The cross-origin resource sharing (CORS) configuration. Applicable for HTTP APIs."
  type        = any
  default     = {}
}

variable "credentials_arn" {
  description = "Part of quick create. Specifies any credentials required for the integration. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "target" {
  description = "Part of quick create. Quick create produces an API with an integration, a default catch-all route, and a default stage which is configured to automatically deploy changes. For HTTP integrations, specify a fully qualified URL. For Lambda integrations, specify a function ARN. The type of the integration will be HTTP_PROXY or AWS_PROXY, respectively. Applicable for HTTP APIs."
  type        = string
  default     = null
}

variable "body" {
  description = "An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs."
  type        = string
  default     = null
}

variable "api_version" {
  description = "A version identifier for the API"
  type        = string
  default     = null
}

variable "tags" {
  description = "A mapping of tags to assign to API gateway resources."
  type        = map(string)
  default     = {}
}

#####
# default stage
variable "default_stage_access_log_destination_arn" {
  description = "Default stage's ARN of the CloudWatch Logs log group to receive access logs. Any trailing :* is trimmed from the ARN."
  type        = string
  default     = null
}

variable "default_stage_access_log_format" {
  description = "Default stage's single line format of the access logs of data, as specified by selected $context variables."
  type        = string
  default     = null
}

variable "default_stage_tags" {
  description = "A mapping of tags to assign to the default stage resource."
  type        = map(string)
  default     = {}
}

#####
# default stage API mapping

####
# domain name
variable "domain_name" {
  description = "The domain name to use for API gateway"
  type        = string
  default     = null
}

variable "domain_name_certificate_arn" {
  description = "The ARN of an AWS-managed certificate that will be used by the endpoint for the domain name"
  type        = string
  default     = null
}

variable "domain_name_ownership_verification_certificate_arn" {
  description = "ARN of the AWS-issued certificate used to validate custom domain ownership (when certificate_arn is issued via an ACM Private CA or mutual_tls_authentication is configured with an ACM-imported certificate.)"
  type        = string
  default     = null
}

variable "domain_name_tags" {
  description = "A mapping of tags to assign to API domain name resource."
  type        = map(string)
  default     = {}
}

variable "mutual_tls_authentication" {
  description = "An Amazon S3 URL that specifies the truststore for mutual TLS authentication as well as version, keyed at uri and version"
  type        = map(string)
  default     = {}
}

####
# routes and integrations
variable "integrations" {
  description = "Map of API gateway routes with integrations"
  type        = map(any)
  default     = {}
}

# authorrizers
variable "authorizers" {
  description = "Map of API gateway authorizers"
  type        = map(any)
  default     = {}
}

# vpc link
variable "vpc_links" {
  description = "Map of VPC Links details to create"
  type        = map(any)
  default     = {}
}

variable "vpc_link_tags" {
  description = "A map of tags to add to the VPC Link"
  type        = map(string)
  default     = {}
}


## Provider Configurations

# variable "region" {
variable "aws_region" {
  type      = string
  sensitive = true
}

variable "aws_access_key" {
  type      = string
  sensitive = true
}

variable "aws_secret_key" {
  type      = string
  sensitive = true
}

variable "prefix" {
  type      = string
}


## Tags

variable "Project_Code" {
  description = "Project Code associated with the deployment"
  type        = string
  default     = null
}

variable "ApplicationId" {
  description = "Application ID for the project"
  type        = string
  default     = null
}

variable "ApplicationName" {
  description = "Name of the Application"
  type        = string
  default     = null
}

variable "environment" {
  description = "Deployment environment (e.g., Production, Staging)"
  type        = string
  default     = null
}

variable "CostCenter" {
  description = "Cost Center for the project"
  type        = string
  default     = null
}

variable "DataClassification" {
  description = "Data Classification level"
  type        = string
  default     = null
}

variable "SCAClassification" {
  description = "SCA Classification level"
  type        = string
  default     = null
}

variable "IACRepo" {
  description = "Infrastructure as Code repository URL"
  type        = string
  default     = null
}

variable "ProductOwner" {
  description = "Email of the Product Owner"
  type        = string
  default     = null
}

variable "ProductSupport" {
  description = "Email of the Product Support"
  type        = string
  default     = null
}

variable "BusinessOwner" {
  description = "Email of the Business Owner"
  type        = string
  default     = null
}

variable "CSBIA_Availability" {
  description = "CSBIA Availability level"
  type        = string
  default     = null
}

variable "CSBIA_Confidentiality" {
  description = "CSBIA Confidentiality level"
  type        = string
  default     = null
}

variable "CSBIA_ImpactScore" {
  description = "CSBIA Impact Score"
  type        = string
  default     = null
}

variable "CSBIA_Integrity" {
  description = "CSBIA Integrity level"
  type        = string
  default     = null
}

variable "BusinessOPU_HCU" {
  description = "Business OPU/HCU associated with the project"
  type        = string
  default     = null
}

variable "BusinessStream" {
  description = "Business Stream associated with the project"
  type        = string
  default     = null
}

variable "SRNumber" {
  description = "Service Request Number"
  type        = string
  default     = null
}
