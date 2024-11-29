#! /bin/sh

# Abort if anything goes havoc.
set -e

# Variables
USER="grotec"
SERVER="ome.evolbio.mpg.de"
PORT=4064
PROJECTNAME='TLFM'

# login
omero login -u $USER -h $SERVER -p $PORT

# Create project
PROJECT_ID=$(omero obj new Project -name="$PROJECTNAME")

# Bulk import
omero import --bulk bulk_import.yml

# Project-Dataset relations

