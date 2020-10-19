#!/bin/bash
sudo curl -sfL https://get.rancher.io | sh -
sudo systemctl enable rancherd-server.service
sudo systemctl start rancherd-server.service
