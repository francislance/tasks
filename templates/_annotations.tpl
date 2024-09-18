{{/* Generate basic labels */}}
{{- define "chart.annotations" }}
helm/annotated-by: "_annotations.tpl"
{{- if .Values.fe.metadata.annotations }}
{{- range $key, $value := .Values.fe.metadata.annotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}