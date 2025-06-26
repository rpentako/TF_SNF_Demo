terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "0.67.0"
    }
  }

  backend "remote" {
    organization = "Snowflake-Terraform2025"

    workspaces {
      name = "TF-Snowflake-Demo"
    }
  }

}
provider "snowflake" {
}

module "ALL_USERS" {
  source = "./users"
  user_map = {
    TEST_USER1 = { "name" = "TEST_USER1", "first_name" = "test", "last_name" = "user1", "email" = "user@snowflake.example", "default_warehouse" = "COMPUTE_WH", "default_role" = "PUBLIC" }
    TEST_USER2 = { "name" = "TEST_USER2", "first_name" = "test2", "last_name" = "user2", "email" = "user2@snowflake.example", "default_warehouse" = "COMPUTE_WH", "default_role" = "PUBLIC" }
    TEST_USER3 = { "name" = "TEST_USER3", "first_name" = "test3", "last_name" = "user3", "email" = "user3@snowflake.example" }
    TEST_USER4 = { "name" = "TEST_USER4", "first_name" = "test4", "last_name" = "user4", "email" = "user4@snowflake.example" }
    TEST_USER5 = { "name" = "TEST_USER5", "first_name" = "test5", "last_name" = "user5", "email" = "user5@snowflake.example" }
  }
}
