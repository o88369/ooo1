{% if request.target == "clash" or request.target == "clashr" %}

port: {{ default(local.clash.http_port, "7891") }}
socks-port: {{ default(local.clash.socks_port, "7892") }}
allow-lan: {{ default(local.clash.allow_lan, "true") }}
mode: Rule
log-level: {{ default(local.clash.log_level, "info") }}
external-controller: {{ default(local.clash.external_controller, "127.0.0.1:9090") }}
{% if default(local.clash.dns, "") == "1" %}
dns:
  enable: true
  listen: :1053
{% endif %}
{% if local.clash.new_field_name == "true" %}
proxies: ~
proxy-groups: ~
rules: ~
{% else %}
333
{% endif %}

