# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oumondad <oumondad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/09/20 18:30:00 by oumondad          #+#    #+#              #
#    Updated: 2025/09/20 19:00:00 by oumondad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = inception

COMPOSE = docker compose -f ./srcs/docker-compose.yml

all: up

up:
	@echo "🚀 Starting containers..."
	@$(COMPOSE) up -d --build

logs:
	@$(COMPOSE) logs -f

down:
	@echo "🧹 Stopping and removing containers..."
	@$(COMPOSE) down

clean: down
	@echo "🧼 Removing volumes..."
	@docker volume rm $$(docker volume ls -q) 2> /dev/null || true

fclean: clean
	@echo "🔥 Removing all images related to the project..."
	@docker rmi $$(docker images -q) 2> /dev/null || true
	@sudo rm -rf ~/data/mariadb/*
	@sudo rm -rf ~/data/wordpress/*

re: fclean up

.PHONY: all up down clean fclean re