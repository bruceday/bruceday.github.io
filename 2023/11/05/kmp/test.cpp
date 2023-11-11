#include <iostream>
#include <string>
#include <string.h>
#include <stdio.h>

int pattern_string(const std::string &str, const std::string &p_str)
{
    int pattern_index = -1;
    int str_length = str.size();
    int p_str_length = p_str.size();
    int pattern_count;
    for (int i = 0; i < str_length - p_str_length + 1; i++)
    {
        pattern_count = 0;
        for (int k = i, j = 0; j < p_str_length; j++, k++)
        {
            if (str[k] == p_str[j])
            {
                pattern_count++;
            }
        }
        if (pattern_count == p_str_length)
        {
            pattern_index = i;
            break;
        }
    }
    return pattern_index;
}

void Next(char *T, int *next)
{
    int i = 1;
    next[1] = 0;
    int j = 0;
    while (i < strlen(T))
    {
        if (j == 0 || T[i - 1] == T[j - 1])
        {
            i++;
            j++;
            next[i] = j;
        }
        else
        {
            j = next[j];
        }
    }
}
int KMP(char *S, char *T)
{
    int next[10];
    Next(T, next); // 根据模式串T,初始化next数组
    int i = 1;
    int j = 1;
    while (i <= strlen(S) && j <= strlen(T))
    {
        // j==0:代表模式串的第一个字符就和当前测试的字符不相等；S[i-1]==T[j-1],如果对应位置字符相等，两种情况下，指向当前测试的两个指针下标i和j都向后移
        if (j == 0 || S[i - 1] == T[j - 1])
        {
            i++;
            j++;
        }
        else
        {
            j = next[j]; // 如果测试的两个字符不相等，i不动，j变为当前测试字符串的next值
        }
    }
    if (j > strlen(T))
    { // 如果条件为真，说明匹配成功
        return i - (int)strlen(T);
    }
    return -1;
}
int main()
{
    std::string str = "12312032183082103812038213912803812098084093284098329048390248093284903284903284098324932849038";
    std::string p_str = "jafklsadjaflksdjfkljsklfjdsklfjlkdsajflkdsajfkljdsklfjsdklfjlkdsjfkldsjfkljaslfjdslkfjklsds";
    for (size_t i = 0; i < 1000; i++)
    {
        str.append(str);
    }
    for (size_t i = 0; i < 100; i++)
    {
        p_str.append(p_str);
    }
    std::cout << "start pattern:";
    auto ret = pattern_string(str, p_str);
    std::cout << ret << std::endl;
    return 0;
}