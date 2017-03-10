#!/usr/bin/env cwl-runner

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: python:3.6.0-slim

class: CommandLineTool

inputs:
  []

outputs:
  - id: output
    type: File
    outputBinding:
      glob: output

stdout: output

baseCommand: [/usr/local/bin/python3, -c, 'import uuid; import sys; sys.stdout.write(str(uuid.uuid4()));']
