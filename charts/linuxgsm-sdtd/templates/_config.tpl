{{/*
 Generate config map data
 */}}
{{- define "linuxgsm-sdtd.configData" -}}
{{- $root := . -}}
serverConfig.xml: |
  <?xml version="1.0"?>
  <ServerSettings>
  {{- range $elem, $elemVal := index .Values "serverConfig" }}
    <property name="{{ $elem }}" value="{{ $elemVal }}" />
  {{- end }}
  </ServerSettings>
{{- end -}}
