{% for name, description in [('OpenStack', 'Group of all OpenStack nodes'), ('Control Nodes', 'Group of Control Nodes')] %}
create_systemgroup_{{ name }}:
  salt.runner:
    - name: spacewalk.call
    - server: manager.su.se
    - namespace: systemgroup
    - method: create
    - args:
      - {{ name }}
      - {{ description }}
{% endfor %}
