{{- define "labels"}}
  app.kubernetes.io/name: {{ .Release.Name}}
{{- end}}
{{- define "selector"}}
  app: {{ .Release.Name}}
{{- end}}

