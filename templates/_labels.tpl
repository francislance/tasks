{{/* Generate basic labels */}}
{{- define "chart.labels" }}
helm/labeled-by: "_labels.tpl"
helm/timestamp: {{ now | unixEpoch }}
helm/chart-name: {{ .Chart.Name }}
helm/chart-version: {{ .Chart.Version }}
{{- if .Values.fe.metadata.labels }}
{{- range $key, $value := .Values.fe.metadata.labels }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}