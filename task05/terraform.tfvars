
resource_groups = {
  rg1 = {
    name     = "cmaz-eh8dj90z-mod5-rg-01"
    location = "East US"
  },
  rg2 = {
    name     = "cmaz-eh8dj90z-mod5-rg-02"
    location = "West Europe"
  },
  rg3 = {
    name     = "cmaz-eh8dj90z-mod5-rg-03"
    location = "Germany West Central"
  }
}

app_service_plans = {
  asp1 = {
    name         = "cmaz-eh8dj90z-mod5-asp-01"
    sku          = "P0v3"
    worker_count = 2
  },
  asp2 = {
    name         = "cmaz-eh8dj90z-mod5-asp-02"
    sku          = "P1v3"
    worker_count = 1
  }
}

app_services = {
  app1 = {
    name     = "cmaz-eh8dj90z-mod5-app-01"
    plan_key = "asp1"
    rg_key   = "rg1"
  },
  app2 = {
    name     = "cmaz-eh8dj90z-mod5-app-02"
    plan_key = "asp2"
    rg_key   = "rg2"
  }
}

traffic_manager = {
  name           = "cmaz-eh8dj90z-mod5-traf"
  routing_method = "Performance"
  location       = "Germany West Central"
}

tags = {
  Creator = "suryansh_tilak@epam.com"
}

allowed_ip = "18.153.146.156"

# Access restriction rule names
allow_ip_rule_name = "allow-ip"
allow_tm_rule_name = "allow-tm"
