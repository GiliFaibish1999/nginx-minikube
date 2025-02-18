{{- define "nginx-minikube.fullname" -}}
nginx-minikube
{{- end }}

{{- define "nginx-minikube.labels" -}}
app: nginx-minikube
{{- end }}

{{- define "nginx-minikube.selectorLabels" -}}
app: nginx-minikube
{{- end }}

{{- define "nginx-minikube.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
nginx-service-account
{{- else }}
{{ .Values.serviceAccount.name }}
{{- end }}
{{- end }}