{{/* Generate basic labels for frontend */}}
{{- define "fe.labels" }}
helm/labeled-by: "_labels.tpl-fe.labels"
helm/timestamp: {{ now | unixEpoch }}
helm/chart-name: {{ .Chart.Name }}
helm/chart-version: {{ .Chart.Version }}
{{- if .Values.fe.metadata.labels }}
{{- range $key, $value := .Values.fe.metadata.labels }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}

{{/* Generate basic labels for backend */}}
{{- define "be.labels" }}
helm/labeled-by: "_labels.tpl-fe.labels"
helm/timestamp: {{ now | unixEpoch }}
helm/chart-name: {{ .Chart.Name }}
helm/chart-version: {{ .Chart.Version }}
{{- if .Values.be.metadata.labels }}
{{- range $key, $value := .Values.be.metadata.labels }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}
