#include <string>
#include <set>
#include <cassert>
#include <vector>

using namespace std;

class Solution
{
public:
    unsigned long long searchInsert(vector<unsigned long long> &nums, unsigned long long target)
    {
        unsigned long long i;
        for (i = 0; i < nums.size(); i++)
        {
            if (nums[i] > target || nums[i] == target)
            {
                break;
            }
        }
        if (i < nums.size())
        {
            return i;
        }
        else if (i == nums.size())
        {
            if (nums[i - 1] == target)
            {
                return i - 1;
            }
            else
            {
                return i;
            }
        }
        return 0;
    }
};

/**
 * @brief
 *
 * @param argc
 * @param argv
 * @return int
 */
int main(int argc, char **argv)
{
    Solution solution;
    vector<unsigned long long> nums;
    for (unsigned long long i = 0; i < 500000000; i++)
    {
        nums.emplace_back(i);
    }
    solution.searchInsert(nums, 500000000);
    return 0;
}