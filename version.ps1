$git_hash = git rev-parse HEAD 2> $null

$git_tag = git describe --tags --abbrev=0 2> $null

$git_commit_time = git log -1 --format=%cd --date=format:'%Y-%m-%d %H:%M:%S' 2>$null

$git_branch_name = git branch --show-current 2>$null

$build_time = Get-Date -Format 'yyyy-MM-dd HH:mm:ss'

@"
#ifndef VERSION_H
#define VERSION_H
#include <string_view>

namespace version{
    inline constexpr std::string_view git_hash = "$git_hash";
    inline constexpr std::string_view git_tag ="$git_tag";
    inline constexpr std::string_view git_branch_name = "$git_branch_name";
    inline constexpr std::string_view git_commit_time = "$git_commit_time";
    inline constexpr std::string_view build_time = "$build_time";
}

#endif
"@ | Out-File -FilePath "version.h" -Encoding utf8

Write-Host "version.h 生成成功"