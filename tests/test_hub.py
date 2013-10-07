import unittest
from mock import patch
from dsgrid.hub import HubModel

class TestHub(unittest.TestCase):

    def test_can_get_grid_status(self):
    	hub = HubModel()
        hub.get_status()
