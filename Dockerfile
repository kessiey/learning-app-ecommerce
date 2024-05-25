# Use the official PHP image as a base image
FROM php:7.4-apache

# Install necessary PHP extensions
RUN docker-php-ext-install mysqli

# Copy the application files into the container
COPY . /var/www/html

# Expose port 80 to the outside world
EXPOSE 80

# Start Apache server
CMD ["apache2-foreground"]
