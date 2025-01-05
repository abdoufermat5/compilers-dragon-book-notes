#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color
BOLD='\033[1m'

# Script to automate the process of setting up chapter directories and files for notes.
readme_file="README.md"
chapter_pattern="^- \[Chapter ([0-9]+): ([^]]+)\]\(([^)]+)\)"
declare -a chapter_numbers
declare -a chapter_titles
declare -a chapter_directories

# Header
clear
echo -e "${BOLD}╔════════════════════════════════════════════╗${NC}"
echo -e "${BOLD}║      Dragon Book Chapter Setup Script       ║${NC}"
echo -e "${BOLD}╚════════════════════════════════════════════╝${NC}\n"

# Extract chapters from README.md
echo -e "${BLUE}📚 Loading chapters from README.md...${NC}\n"

while IFS= read -r line; do
    if [[ $line =~ $chapter_pattern ]]; then
        chapter_numbers+=("${BASH_REMATCH[1]}")
        chapter_titles+=("${BASH_REMATCH[2]}")
        chapter_directories+=("${BASH_REMATCH[3]}")
    fi
done < "$readme_file"

# Check if chapters were found
if [ ${#chapter_numbers[@]} -eq 0 ]; then
    echo -e "${RED}❌ Error: No chapters found in $readme_file${NC}"
    echo -e "${YELLOW}Please ensure the chapter entries match the expected format.${NC}"
    exit 1
fi

# Display chapters
echo -e "${BOLD}Available Chapters:${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════${NC}"
for ((i = 0; i < ${#chapter_numbers[@]}; i++)); do
    printf "${BOLD}[%2d]${NC} ${YELLOW}%-45s${NC}\n" "${chapter_numbers[$i]}" "${chapter_titles[$i]}"
done
echo -e "${BLUE}═══════════════════════════════════════════════${NC}\n"

# Prompt for chapter number
echo -e "${BOLD}Select a chapter to initialize:${NC}"
read -p "Enter chapter number → " chapter_number

# Validate chapter number
chapter_found=false
for ((i = 0; i < ${#chapter_numbers[@]}; i++)); do
    if [ "${chapter_numbers[$i]}" -eq "$chapter_number" ]; then
        chapter_found=true
        chapter_index=$i
        break
    fi
done

if [ "$chapter_found" = false ]; then
    echo -e "\n${RED}❌ Error: Invalid chapter number: $chapter_number${NC}"
    exit 1
fi

chapter_title="${chapter_titles[$chapter_index]}"
# Convert title to lowercase and replace spaces with hyphens for directory name
directory_name=$(echo "$chapter_title" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

# Check if chapter folder exists
if [ -d "$directory_name" ]; then
    echo -e "\n${YELLOW}⚠️  Chapter $chapter_number is already initialized.${NC}"
    exit 1
fi

# Create chapter directory and files
echo -e "\n${BLUE}🔨 Creating chapter structure...${NC}"
mkdir -p "$directory_name/examples" "$directory_name/exercises" "$directory_name/assets"
echo -e "# Chapter $chapter_number: $chapter_title\n\n## Overview\n\n## Key Concepts\n\n## Summary\n" > "$directory_name/readme.md"

# Display success message and structure
echo -e "\n${GREEN}✅ Chapter $chapter_number setup complete!${NC}"
echo -e "\n${BOLD}Created folder structure:${NC}"
echo -e "${BLUE}───────────────────────────${NC}"
echo -e "📁 ${directory_name}"
echo -e "├── 📁 examples"
echo -e "├── 📁 exercises"
echo -e "├── 📁 assets"
echo -e "└── 📄 readme.md"

echo -e "\n${GREEN}🎉 Good luck with Chapter $chapter_number: $chapter_title!${NC}"