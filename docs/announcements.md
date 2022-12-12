# Announcements

This page lists all technical changes for your personal cloud in the past and in the near future. For release changes please see [version history](ref/version-history.md). Incidents and service disruptions are announced on the [status page](https://status.docupike.com/).

[:material-rss: Subscribe to announcements](/announcements.atom)

{% for announcement in (announcements | default([])) %}
## {{ announcement.date | default('Upcoming change') }} – {{ announcement.title | default(announcement.content[:23] + '…') }}

{{ announcement.content }}
{% endfor %}
