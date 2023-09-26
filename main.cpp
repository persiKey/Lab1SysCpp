#include "radio.hpp"

constexpr int ENTRY_NUMBER = 5;

int main()
{
    Role rolesOnStack[ENTRY_NUMBER];
    Role* rolesOnHeap = new Role[ENTRY_NUMBER];


    delete[] rolesOnHeap;

}