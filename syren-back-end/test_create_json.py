import unittest
from unittest.mock import Mock, patch
from google.cloud.storage.blob import Blob

from gcp import create_json


class TestCreateJson(unittest.TestCase):

    @patch('google.cloud.storage.bucket.Bucket.blob')
    def test_create_json(self, mock_blob):
        mock_blob.return_value = Mock(spec=Blob)
        json_object = {'key': 'value'}
        filename = 'test.json'
        expected_response = {'response': 'test.json upload complete'}
        result = create_json(json_object, filename)
        mock_blob.assert_called_once_with(filename)
        mock_blob.return_value.upload_from_string.assert_called_once_with(
            data='{"key": "value"}', content_type='application/json')
        self.assertEqual(result, expected_response)