# Vide Coding Rules for Cursor AI

A collection of predefined rules for Cursor AI to implement Vide coding best practices. This repository contains guidelines that can be added to your project's `.cursorrules` to ensure consistent, high-quality code generation.

## Overview

This repository contains a set of rules and guidelines that help Cursor AI generate code according to Vide's best practices. By adding these rules to your project, you can ensure that all AI-generated code follows consistent patterns, naming conventions, and architectural principles.

## Contents

- **coding-pattern-preferences.mdc**: General coding patterns and practices
- **dependencies-management.mdc**: Guidelines for managing dependencies
- **naming-convention.mdc**: Naming conventions for variables, functions, components, etc.
- **techstack.mdc**: Preferred technology stack and tools

## How to Use

### Option 1: Quick Install (Recommended)

Run the installation script directly:

```bash
curl -s https://raw.githubusercontent.com/maitrongnhan99/cursor-vide-coding-rules/main/install.sh | bash
```

This will clone the repository and copy the rules to your project's `.cursorrules` directory.

### Option 2: Manual Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/maitrongnhan99/cursor-vide-coding-rules.git
   ```

2. Copy the rules to your project's `.cursorrules` directory:

   ```bash
   mkdir -p /path/to/your/project/.cursorrules
   cp *.mdc /path/to/your/project/.cursorrules/
   ```

3. Customize the rules as needed for your specific project requirements.

4. When using Cursor AI in your project, it will now follow these guidelines when generating code.

## Key Features

- **Consistent Coding Patterns**: Ensures all generated code follows the same patterns and practices
- **Standardized Naming Conventions**: Maintains consistent naming across your codebase
- **Tech Stack Alignment**: Guides AI to use your preferred technologies and libraries
- **Dependency Management**: Follows best practices for managing dependencies

## Contributing

Feel free to contribute to this repository by adding new rules or improving existing ones. Submit a pull request with your changes, and make sure to follow the existing format for rule files.

## License

[MIT License](LICENSE)