# Contributing to tiation-docker-debian

🎉 Thank you for your interest in contributing to tiation-docker-debian! This document provides guidelines for contributing to this enterprise-grade project.

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [Contribution Guidelines](#contribution-guidelines)
- [Pull Request Process](#pull-request-process)
- [Testing](#testing)
- [Documentation](#documentation)

## Code of Conduct

This project adheres to a code of conduct that promotes a welcoming and inclusive environment.

## Getting Started

1. **Fork the repository** on GitHub
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/yourusername/tiation-docker-debian.git
   cd tiation-docker-debian
   ```
3. **Install dependencies**:
   ```bash
   npm install
   ```
4. **Run tests**:
   ```bash
   npm test
   ```

## Development Setup

### Prerequisites

- Node.js 18.0 or later
- npm 8.0 or later
- Git

### Environment Setup

```bash
# Create a new branch for your feature
git checkout -b feature/your-feature-name

# Make your changes
# ... edit files ...

# Test your changes
npm test

# Commit your changes
git commit -m "Add your feature description"
```

## Contribution Guidelines

### Code Style

- Follow the existing code style
- Use meaningful variable and function names
- Add comments for complex logic
- Write tests for new features

### Commit Messages

Use conventional commits format:
- `feat: add new feature`
- `fix: resolve bug`
- `docs: update documentation`
- `style: formatting changes`
- `refactor: code refactoring`
- `test: add tests`

## Pull Request Process

1. **Create a feature branch**
2. **Make your changes**
3. **Test thoroughly**
4. **Update documentation**
5. **Submit pull request**

### Pull Request Requirements

- Clear description of changes
- Reference related issues
- Include testing instructions
- Update documentation as needed
- Ensure all tests pass

## Testing

```bash
# Run all tests
npm test

# Run tests with coverage
npm run test:coverage

# Run specific test file
npm test -- --testNamePattern="YourTest"
```

## Documentation

- Update README.md for user-facing changes
- Add JSDoc comments for functions
- Update API documentation
- Include usage examples

## Recognition

Contributors will be:
- Listed in the README
- Credited in release notes
- Thanked in project documentation

---

Thank you for contributing to tiation-docker-debian! Your contributions help make this project enterprise-grade.

🚀 **Happy Coding!**
