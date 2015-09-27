{% from "utils-formula/map.jinja" import util with context %}
install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
