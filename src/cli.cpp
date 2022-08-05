#include <string>
#include "cli.h"

namespace App {

    cli::cli(std::string message) {
        cli::message = message;
    }

    std::string cli::getMessage() {
        return message;
    }
}