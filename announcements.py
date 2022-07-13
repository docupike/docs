from __future__ import annotations
import os
import yaml
from jinja2 import Template
from datetime import datetime
import dateutil.parser
import dateutil.tz
from datetime import timezone
import markdown

buildDate = datetime.now(dateutil.tz.tzutc()).isoformat()

def renderFeedItem(announcement):
    announcement["title"] = announcement.get("title", announcement["content"][:23] + '…')
    
    announcement["content"] = markdown.markdown(announcement["content"])
    
    if "date" in announcement:
        announcement["date"] = announcement["date"].isoformat() + 'T00:00:00.0+00:00'
    else:
        announcement["date"] = buildDate
    return announcement

def define_env(env):
    "Definition of the module"

def on_post_build(env):
    with open("data/announcements.yml") as file:
        announcements = yaml.safe_load(file)

    announcements = list(map(renderFeedItem, announcements["announcements"]))

    with open("templates/announcements.atom.j2") as file:
        template = Template(file.read())

    feed_content = template.render(announcements=announcements, buildDate=buildDate)

    site_dir = env.conf['site_dir']
    
    file_path = os.path.join(site_dir, 'announcements.atom')

    with open(file_path, 'w') as f:
        f.write(feed_content)
