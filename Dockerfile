FROM php:8.3.10

# Initialization
RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt/lists \
    # Update apt package list
    apt-get update -y && apt-get install -y \
    git \
    libpq-dev \
    openssl \
    unzip \
    zip \
    # Install Composer
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    # Install PHP extensions
    && docker-php-ext-install pdo pdo_pgsql \
    # Check for mbstring module
    && php -m | grep mbstring \
    # Clean up to reduce image size
    && rm -rf /var/lib/apt/lists/* /var/cache/apt/*

WORKDIR /app
COPY . /app
RUN composer install
