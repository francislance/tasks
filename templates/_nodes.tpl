{{/* Generate node affinity */}}
{{- define "node.affinity" }}
{{- if .Values.affinity.nodeNames }}
{{- range .Values.affinity.nodeNames }}
- {{ . }}
{{- end }}
{{- end }}
{{- end }}