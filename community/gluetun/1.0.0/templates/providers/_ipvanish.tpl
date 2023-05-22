{{/* https://github.com/qdm12/gluetun/wiki/IPVanish */}}
{{- define "gluetun.ipvanish.openvpn.validation" -}}
  {{- $req := (list "openvpnUser" "openvpnPassword") -}}

  {{- $unsup := (list "serverRegions" "serverNames") -}}

  {{- include "gluetun.options.required" (dict "rootCtx" $ "options" $req) -}}
  {{- include "gluetun.unsupported.server.options" (dict "rootCtx" $ "options" $unsup) -}}
{{- end -}}

{{- define "gluetun.ipvanish.wireguard.validation" -}}
  {{- include "gluetun.unsupported.type" $ -}}
{{- end -}}