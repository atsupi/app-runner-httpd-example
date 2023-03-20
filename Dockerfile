#FROM httpd:2.4
#Use ECR Public repository instead of Docker.io
FROM public.ecr.aws/docker/library/httpd:alpine3.17
COPY ./src /usr/local/apache2/htdocs/
EXPOSE 80

CMD ["/usr/local/apache2/bin/httpd","-DFOREGROUND"]
