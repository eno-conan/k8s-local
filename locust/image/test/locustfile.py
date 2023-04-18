from locust import HttpUser, task, between

class TestUser(HttpUser):

    @task
    def hello(self):
        self.client.get("/")