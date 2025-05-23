from django.apps import AppConfig


class ApiConfig(AppConfig):
    default_app_config = 'api.apps.ApiConfig'  
    name = 'api'
    def ready(self):
        import api.signals