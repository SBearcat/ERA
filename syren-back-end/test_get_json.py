import unittest
from google.cloud import storage
from gcp import create_json, get_json

class TestGetJson(unittest.TestCase):
    def setUp(self):
        self.storage_client = storage.Client.from_service_account_json('syren-376523-67988eb20f53.json')
        self.bucket_name = 'syren_location_data'
        self.BUCKET = self.storage_client.get_bucket(self.bucket_name)
        self.json_object = {
            "location_1": {
                "name": "Sydney",
                "latitude": -33.8567844,
                "longitude": 151.213108
            },
            "location_2": {
                "name": "Melbourne",
                "latitude": -37.840935,
                "longitude": 144.946457
            }
        }
        self.filename = 'locations.json'
        create_json(self.json_object, self.filename)

    def test_get_json(self):
        # get the json object from the created bucket
        file_data = get_json(self.filename)
        # check if the file data is a dictionary
        self.assertIsInstance(file_data, dict)
        # check if the data in the dictionary is as expected
        self.assertDictEqual(file_data, self.json_object)

if __name__ == '__main__':
    unittest.main()