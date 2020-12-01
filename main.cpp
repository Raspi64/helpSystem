#include <iostream>
#include "helpSystem.hpp"

int main() {

    Entry baseDirectory = initHelpSystem("/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/ALL/");


    const std::vector<Entry *> &entries = searchEntries(&baseDirectory, "int");

    printf("SearchResults! \n");
    for (Entry *e : entries) {
        std::cout << e->name << std::endl;
    }

    return 0;
}
