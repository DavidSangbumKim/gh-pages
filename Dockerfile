FROM ontouchstart/docker-jekyll-base

RUN gem install github-pages
add ./ /www
RUN cd /www && bundle exec jekyll build -d /usr/share/nginx/html
VOLUME ["/usr/local/nginx/html"]
ENTRYPOINT ["/bin/bash"]

