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
{{ template "nginx-minikube.fullname" . }}-service-account
{{- end }}