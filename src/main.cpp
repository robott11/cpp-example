#include <iostream>
#include "cli.h"

int main(int argc, char* argv[])
{
    App::cli obj = App::cli("Hello World!");

    std::cout << obj.getMessage() << std::endl;

    return EXIT_SUCCESS;
}