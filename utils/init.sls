{% from "utils-formula/utils/map.jinja" import util, repo with context %}
## epel-forumla needs to be at file-roots https://github.com/saltstack-formulas/epel-formula 
{% include "epel-formula/epel/init.sls" %}

install_sysdig:
  cmd.run:
    - name: {{ util.sysdig }}
install_git:
  pkg.installed:
    - name: {{ util.git }}
install_htop:
  pkg.installed:
    - name: {{ util.htop }}
install_glances:
  pkg.installed:
    - name: {{ util.glances }}
install_dstat:
  pkg.installed:
    - name: {{ util.dstat }}
install_vim:
  pkg.installed:
    - name: {{ util.vim }}
