
resource_groups = {
  rg1 = {
    name     = "cmaz-eh8dj90z-mod5-rg-01"
    location = "West Europe"
  },
  rg2 = {
    name     = "cmaz-eh8dj90z-mod5-rg-02"
    location = "North Europe"
  },
  rg3 = {
    name     = "cmaz-eh8dj90z-mod5-rg-03"
    location = "East US"
  }
}

app_service_plans = {
  asp1 = {
    name           = "cmaz-eh8dj90z-mod5-asp-01"
    location       = "West Europe"
    resource_group = "cmaz-eh8dj90z-mod5-rg-01"
    sku_name       = "P0v3"
    worker_count   = 2
  },
  asp2 = {
    name           = "cmaz-eh8dj90z-mod5-asp-02"
    location       = "North Europe"
    resource_group = "cmaz-eh8dj90z-mod5-rg-02"
    sku_name       = "P1v3"
    worker_count   = 1
  }
}

app_services = {
  app1 = {
    name             = "cmaz-eh8dj90z-mod5-app-01"
    location         = "West Europe"
    resource_group   = "cmaz-eh8dj90z-mod5-rg-01"
    app_service_plan = "cmaz-eh8dj90z-mod5-asp-01"
  },
  app2 = {
    name             = "cmaz-eh8dj90z-mod5-app-02"
    location         = "North Europe"
    resource_group   = "cmaz-eh8dj90z-mod5-rg-02"
    app_service_plan = "cmaz-eh8dj90z-mod5-asp-02"
  }
}

traffic_manager = {
  name           = "cmaz-eh8dj90z-mod5-traf"
  resource_group = "cmaz-eh8dj90z-mod5-rg-03"
  routing_method = "Performance"
}

tags = {
  Creator = "suryansh_tilak@epam.com"
}

allowed_ip = "18.153.146.156"
