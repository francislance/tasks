{{/* Generate basic annotations for Frontend */}}
{{- define "fe.annotations" }}
helm/annotated-by: "_annotations.tpl-fe.annotations"
{{- if .Values.fe.metadata.annotations }}
{{- range $key, $value := .Values.fe.metadata.annotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}

{{/* Generate basic annotations for Backend */}}
{{- define "be.annotations" }}
helm/annotated-by: "_annotations.tpl-be.annotations"
{{- if .Values.be.metadata.annotations }}
{{- range $key, $value := .Values.be.metadata.annotations }}
{{ $key }}: {{ $value | quote }}
{{- end }}
{{- end }}
{{- end }}