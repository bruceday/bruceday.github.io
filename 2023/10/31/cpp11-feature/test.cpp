#include <iostream>
#include <array>
#include <vector>

void test_stl_array()
{
    const size_t size = 1000000000UL;
    auto *datas = new std::array<size_t, size>;
    for (size_t i = 0; i < size; i++)
    {
        (*datas)[i] = i;
    }
    delete datas;
    datas = nullptr;
}

void test_stl_vector()
{
    const size_t size = 1000000000UL;
    auto *datas = new std::vector<size_t>(size, 0);
    for (size_t i = 0; i < size; i++)
    {
        (*datas)[i] = i;
    }
    delete datas;
    datas = nullptr;
}

int main()
{
    test_stl_vector();
    return 0;
}