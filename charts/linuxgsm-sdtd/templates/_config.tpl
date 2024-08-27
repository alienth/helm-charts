{{/*
 Generate config map data
 */}}
{{- define "linuxgsm-sdtd.configData" -}}
{{- $root := . -}}
serverconfig.xml: |
  <?xml version="1.0"?>
  <ServerSettings>
  {{- range $elem, $elemVal := index .Values "serverConfig" }}
  {{- if not (eq $elem "TelnetPassword" "ServerPassword") }}
    <property name="{{ $elem }}" value="{{ $elemVal }}" />
  {{- end }}
  {{- end }}
  <!--INJECT_SECRETS_HERE-->
  </ServerSettings>
{{- end -}}
