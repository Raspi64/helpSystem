#include <iostream>
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

        if(!entries.empty()) {
            int number;
            std::cout << "Show Text (0) ?" << std::endl;
            std::cin >> number;
            if(number == 0){

            } else {
                std::cout << entries.at(number)->name << std::endl;
                std::cout << entries.at(number)->content << std::endl;
            }
        }

        std::cout << std::endl;
    }

    return 0;
}
