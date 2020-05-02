{{- define "database.fullname" -}}
{{- if .Values.databaseOverride -}}
{{- .Values.databaseOverride -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}