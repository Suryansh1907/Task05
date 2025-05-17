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
    location = "Central India"
  }
}

app_service_plans = {
  asp1 = {
    name         = "cmaz-eh8dj90z-mod5-asp-01"
    location     = "East US"
    rg_name      = "cmaz-eh8dj90z-mod5-rg-01"
    sku          = "P0v3"
    worker_count = 2
  },
  asp2 = {
    name         = "cmaz-eh8dj90z-mod5-asp-02"
    location     = "West Europe"
    rg_name      = "cmaz-eh8dj90z-mod5-rg-02"
    sku          = "P1v3"
    worker_count = 1
  }
}

app_services = {
  app1 = {
    name      = "cmaz-eh8dj90z-mod5-app-01"
    location  = "East US"
    rg_name   = "cmaz-eh8dj90z-mod5-rg-01"
    plan_name = "cmaz-eh8dj90z-mod5-asp-01"
  },
  app2 = {
    name      = "cmaz-eh8dj90z-mod5-app-02"
    location  = "West Europe"
    rg_name   = "cmaz-eh8dj90z-mod5-rg-02"
    plan_name = "cmaz-eh8dj90z-mod5-asp-02"
  }
}

traffic_manager = {
  name           = "cmaz-eh8dj90z-mod5-traf"
  resource_group = "cmaz-eh8dj90z-mod5-rg-03"
  routing_method = "Performance"
}

tags = {
  creator = "suryansh_tilak@epam.com"
  project = "module-5"
}

allowed_ip = "18.153.146.156"
