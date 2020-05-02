{{- define "backend.fullname" -}}
{{- if .Values.backendOverride -}}
{{- .Values.backendOverride -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}