#ifndef CLI_EXAMPLE_CLI_H
#define CLI_EXAMPLE_CLI_H

#include <string>

namespace App {

class cli {
public:
    cli(std::string message);
    std::string getMessage();

private:
    std::string message;
};

}

#endif
