#include <iostream>
#include <filesystem>
#include "helpSystem.hpp"

int main() {

    Entry baseDirectory = initHelpSystem("../ALL/");

    std::string searchword;
    while(true) {
        std::cout << "Write Seachword here(end with '0'): " << std::endl;
        std::cin >> searchword;

        if (searchword == "0") {
            std::cout << "Good Bye!" << std::endl;
            return 0;
        }

        const std::vector<Entry *> &entries = searchEntries(&baseDirectory, searchword);

        std::cout << "Results: " << std::endl;
        for (Entry *e : entries) {
            std::cout << e->name << std::endl;
        }
        std::cout << std::endl;
    }

    return 0;
}
