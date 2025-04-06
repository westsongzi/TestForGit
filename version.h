#ifndef VERSION_H
#define VERSION_H
#include <string_view>

namespace version{
    inline constexpr std::string_view git_hash = "c8b3354655ffa7e1975ceba8fd3d8d74f69cac30";
    inline constexpr std::string_view git_tag ="";
    inline constexpr std::string_view git_branch_name = "main";
    inline constexpr std::string_view git_commit_time = "2025-04-05 21:39:50";
    inline constexpr std::string_view build_time = "2025-04-06 01:24:55";
}

#endif
