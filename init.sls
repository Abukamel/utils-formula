{% from "utils-formula/map.jinja" import util, repo with context %}
install_epel_repo:
  pkg.installed:
    - name: {{ repo.epel }}
install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
