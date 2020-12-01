
#ifndef HELPSYSTEM_HELPSYSTEM_HPP
#define HELPSYSTEM_HELPSYSTEM_HPP


#include <string>
#include <vector>

struct Entry {
    bool is_file;
    std::string name;
    std::vector<std::string> searchWords;
    std::string content;
    std::vector<Entry> sub_entries;
};

Entry initHelpSystem(std::string path);

std::vector<Entry *> searchEntries(Entry *entry, std::string searchword);

#endif //HELPSYSTEM_HELPSYSTEM_HPP
