{% from "utils-formula/map.jinja" import util, repo with context %}
{% include "epel-formula/epel/init.sls" %}

install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
install_git:
  cmd.run:
    - name: {{ util.git }}
install_htop:
  cmd.run:
    - name: {{ util.htop }}
install_glances:
  cmd.run:
    - name: {{ util.glances }}
install_dstat:
  cmd.run:
    - name: {{ util.dstat }}
install_vim:
  cmd.run:
    - name: {{ util.vim }}
