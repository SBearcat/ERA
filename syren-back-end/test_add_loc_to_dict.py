import unittest
from unittest.mock import patch
from places_api import add_loc_to_dict, loc_dict

class TestAddLocToDict(unittest.TestCase):
    
    @patch('googlemaps.Client')
    def test_add_loc_to_dict(self, mock_client):
        # Set up mock response from the Google Maps API
        mock_place = {
            'name': 'Test Place',
            'geometry': {
                'location': {
                    'lat': 37.7749295,
                    'lng': -122.4194155
                }
            },
            'types': ['restaurant'],
            'place_id': 'test_place_id'
        }
        mock_details = {
            'formatted_phone_number': '(123) 456-7890',
            'website': 'https://www.testplace.com'
        }
        mock_client.return_value.place.return_value = {'result': mock_details}
        
        # Call the function with the mock place
        add_loc_to_dict([mock_place])
        
        # Check that the location was added to the dictionary
        expected_dict = {
            'test_place_id': {
                'name': 'Test Place',
                'geo_location': '{"lat": 37.7749295, "lng": -122.4194155}',
                'phone': '(123) 456-7890',
                'url': 'https://www.testplace.com',
                'place_id': 'test_place_id',
                'lat': '37.7749295',
                'long': '-122.4194155',
                'types': "['restaurant']"
            }
        }
        self.assertDictEqual(loc_dict, expected_dict)