{% from "utils-formula/utils/map.jinja" import util with context %}
## epel-forumla needs to be at file-roots https://github.com/saltstack-formulas/epel-formula 
{% include "epel-formula/epel/init.sls" %}

{% for key, value in util.pkg.iteritems() %}
install_{{ key }}:
  pkg.installed:
    - name: {{ value }}
{% endfor %}
install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
