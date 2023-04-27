import unittest
from unittest.mock import patch
from datetime import datetime
from google.cloud import storage
from places_api import last_update_datetime

class TestLastUpdateDatetime(unittest.TestCase):
    @patch.object(storage.Client, 'from_service_account_json')
    def test_last_update_datetime(self, mock_storage_client):
        mock_blob = mock_storage_client.return_value.get_bucket.return_value.get_blob.return_value
        mock_blob.updated = datetime(2022, 4, 16, 12, 0, 0)

        expected_result = "Updated: 2022-04-16 12:00:00"
        actual_result = last_update_datetime()

        self.assertEqual(actual_result, expected_result)

if __name__ == '__main__':
    unittest.main()