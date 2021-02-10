job "postgres" {
  region      = "us-east-1"
  datacenters = ["default"]
  type        = "service"

  meta {
    version = "1"
  }

  group "db" {
    task "postgres" {
      driver = "docker"

      config {
        image = "postgres:12"
        volumes = [
          "/postgres:/appdata/postgres",
        ]
        port_map {
          db = 5432
        }
      }

      env {
        POSTGRES_DB       = "postgres"
        POSTGRES_USER     = "postgres"
        POSTGRES_PASSWORD = "ChAnGeMe"
        PGDATA            = "/appdata/postgres"
      }

      service {
        name = "${NOMAD_JOB_NAME}"
        tags = ["postgres"]

        port = "db"

        check {
          type     = "tcp"
          port     = "db"
          interval = "30s"
          timeout  = "2s"
        }
      }

      resources {
        network {
          port "db" {
            static = "25432"
          }
        }
      }
    }
  }
}
