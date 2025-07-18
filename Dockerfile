FROM debian:bullseye-slim

# Install necessary packages
RUN apt-get update && apt-get install -y \
    ruby-full \
    build-essential \
    zlib1g-dev \
    git \
    curl \
    nginx \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

# Configure Ruby environment
ENV GEM_HOME="/usr/local/bundle"
ENV PATH $GEM_HOME/bin:$GEM_HOME/gems/bin:$PATH

# Install Jekyll and Bundler with specific versions
RUN gem install jekyll:4.2.2 bundler:2.4.22

# Set working directory
WORKDIR /app

# Copy application files
COPY . .

# Copy Gemfile and install dependencies
COPY Gemfile* ./
RUN bundle install

# Create nginx configuration
RUN mkdir -p /etc/nginx/sites-available /etc/nginx/sites-enabled
COPY nginx.conf /etc/nginx/sites-available/default
RUN ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Create supervisor configuration
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Build Jekyll site
RUN bundle exec jekyll build

# Copy built site to nginx directory
RUN cp -r _site/* /var/www/html/

# Expose port
EXPOSE 80

# Start supervisor
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
