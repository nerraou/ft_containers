NAME=containers
CC_FLAGS = -g -Wall -Wextra -Werror -std=c++98
CC = c++

INCLUDE_ARGS= -I src

OBJECT_FILES=$(SOURCE_FILES:.cpp=.o)

SOURCE_FILES= main.cpp

HPP_FILES=test.hpp
	

all: $(NAME)

$(NAME): $(OBJECT_FILES)
	$(CC) $(CC_FLAGS) -o $@ $^

%.o: %.cpp $(HPP_FILES)
	$(CC) $(CC_FLAGS) $(INCLUDE_ARGS) -c $< -o $@

clean:
	rm -f $(OBJECT_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all