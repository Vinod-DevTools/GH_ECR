#!/usr/bin/env python3
import json, os

repo_root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
images_file = os.path.join(repo_root, "images.txt")

with open(images_file) as f:
    lines = [l.strip() for l in f if l.strip()]


images = {}
for idx, line in enumerate(lines):
    name, tag = line.split(":")
    images[f"image_{idx}"] = f"{name}:{tag}"

print(json.dumps(images))
