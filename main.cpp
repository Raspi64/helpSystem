#include <iostream>

//filetypes
#include <string>
#include <vector>

//filesystem Iterator
#include <filesystem>
#include <fstream>


namespace fs = std::filesystem;

struct Entry {
    bool is_file;
    std::string name;
    std::vector<std::string> searchWords;
    std::string content;
    std::vector<Entry> sub_entries;
};


//----------------------------------------------------------------------------------------------------------------------
// Suchen nach Schlagwörtern in den searchwords der einzelnen Einträhge
void subSearch(Entry *posEntry, std::vector<Entry *> *results, std::string searchword) {

    if (posEntry->is_file == false) {
        for (Entry &entry : posEntry->sub_entries) {
            subSearch(&entry, results, searchword);
        }
    } else {

        for (auto &keyword : posEntry->searchWords) {
            if (keyword == searchword) {
                results->push_back(posEntry);
            }

        }
    }
}

// wird von der UI aufgerunfen, gibt den Knoten mit von dem aus gesucht werden soll und dem suchbegriff
std::vector<Entry *> searchEntries(Entry *entry, std::string searchword) {
    std::vector<Entry *> searchResults;

    subSearch(entry, &searchResults, searchword);

    return searchResults;
}

//----------------------------------------------------------------------------------------------------------------------

void readFile(std::string filePath, Entry *entry) {
    std::string line;
    std::ifstream file;
    file.open(filePath);

    std::string contend;
    std::string firstLine;

    //Topic 9: Kontrollfluß: grundlegende Kontrollstrukturen
    if (file.is_open()) {
        //in der ersten Zeile stehen die Schlagwörter nach denen gesucht wird.
        std::getline(file, firstLine);
        while (std::getline(file, line)) {
            //std::cout << line << std::endl;
            //contend += line + "\n";
            contend.append(line + "\n");
        }
        file.close();
    }
    entry->content = contend;


    // Split first line, save Words in Vector
    std::string delimiter = ";";
    size_t pos = 0;
    std::string token;
    while ((pos = firstLine.find(delimiter)) != std::string::npos) {
        token = firstLine.substr(0, pos);

        entry->searchWords.push_back(token);

        std::cout << token << std::endl;
        firstLine.erase(0, pos + delimiter.length());
    }
    //letztes SearchWord wird noch hinzugefügt
    entry->searchWords.push_back(firstLine);
    std::cout << firstLine << std::endl;
}

void iterateFolders(std::string path, Entry *parent) {
    for (auto &p: fs::directory_iterator(path)) {
        //std::cout << p.path() << std::endl;
        std::string s = p.path();

        std::string last_element(s.substr(s.rfind("/") + 1));
        std::cout << last_element << std::endl;

        auto *entry = new Entry();

        if (last_element.find(".txt") != std::string::npos) {
            readFile(p.path(), entry);
            entry->is_file = true;
            entry->name = last_element;

            printf("%s", entry->content.c_str());
            std::cout << entry->content << std::endl;
        } else {
            entry->is_file = false;
            entry->name = last_element;
            entry->sub_entries = std::vector<Entry>();

            iterateFolders(p.path(), entry);
        }
        parent->sub_entries.push_back(*entry);
    }
}


int main() {
    std::cout << "Hello, World!" << std::endl;

    std::string path = "/mnt/c/Users/Ununoctium/Desktop/uni/studium/5_Semester/Projektgruppe Link/helpSystem/ALL/";
    Entry baseDirectory;
    baseDirectory.is_file = false;
    iterateFolders(path, &baseDirectory);


    const std::vector<Entry *> &entries = searchEntries(&baseDirectory, "markus");

    printf("SearchResults! \n");
    for (Entry *e : entries) {
        std::cout << e->name << std::endl;
    }
    
    return 0;
}
