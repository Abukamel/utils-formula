{% from "utils-formula/map.jinja" import util with context %}
install_epel_repo:
  pkg.installed:
    - name: {{ util.epel }}
install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
