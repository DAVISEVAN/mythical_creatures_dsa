# **Mythical Creatures DSA Practice**

This repository provides a fun and interactive way to practice Data Structures and Algorithms (DSA) concepts using mythical creatures as the theme. Each mythical creature corresponds to a specific algorithm or data structure concept, with tasks designed to reinforce learning through Test-Driven Development (TDD). This 

---

## **Setup Instructions**

### **Prerequisites**
- Ruby (version 3.0 or newer recommended)
- Bundler (to manage dependencies)
- Git (to clone the repository)

### **Clone the Repository**
1. Open your terminal.
2. Clone the repository:
   ```bash
   git clone <repository-url>
   '''
Navigate to the project directory:
cd mythical_creatures_dsa
Install Dependencies
Run Bundler to install required gems:
bundle install
Run the Tests
Use RSpec to run all tests and see your progress:
bundle exec rspec
To run tests for a specific category (algorithms or creatures), provide the folder path:
bundle exec rspec spec/algorithms
bundle exec rspec spec/creatures
To run tests for a specific creature or algorithm, provide the spec file path:
bundle exec rspec spec/creatures/gremlin_spec.rb
Project Structure

The repository is organized as follows:
'''
mythical_creatures_dsa/
├── Gemfile             # Manages Ruby gem dependencies
├── Gemfile.lock        # Tracks gem versions
├── lib/                # Contains implementation files
│   ├── gremlin.rb      # Gremlin class
│   ├── sphinx.rb       # Sphinx class
│   ├── hydra.rb        # Hydra class
│   ├── phoenix.rb      # Phoenix class
│   ├── minotaur.rb     # Minotaur class
│   ├── unicorn.rb      # Unicorn class
│   ├── linear_search.rb # Linear search implementation
│   ├── binary_search.rb # Binary search implementation
│   ├── merge_sort.rb   # Merge sort implementation
│   ├── quick_sort.rb   # Quick sort implementation
│   ├── dfs.rb          # Depth-first search implementation
│   └── bfs.rb          # Breadth-first search implementation
├── spec/               # Contains RSpec test files
│   ├── algorithms/     # Algorithm-related specs
│   │   ├── linear_search_spec.rb
│   │   ├── binary_search_spec.rb
│   │   ├── merge_sort_spec.rb
│   │   ├── quick_sort_spec.rb
│   │   ├── dfs_spec.rb
│   │   └── bfs_spec.rb
│   ├── creatures/      # Creature-related specs
│       ├── gremlin_spec.rb
│       ├── sphinx_spec.rb
│       ├── hydra_spec.rb
│       ├── phoenix_spec.rb
│       ├── minotaur_spec.rb
│       └── unicorn_spec.rb
└── README.md          # Documentation
'''
How to Use the Repository

1. Choose a Category
Algorithms: Learn the basics of individual DSA concepts, like Linear Search or Merge Sort.
Creatures: Implement DSA concepts in the context of a mythical creature with specific behaviors.
2. Solve the Problems
Navigate to the relevant spec file (in spec/algorithms or spec/creatures) to see the tasks and requirements.
Implement the corresponding class or method in the lib folder to make the tests pass.
3. Run Tests
Use RSpec to verify your solutions.
Start with the simpler exercises (e.g., linear_search_spec.rb or gremlin_spec.rb) and progress to more challenging ones.
List of Creatures and Algorithms

Creatures
Gremlin: Linear Search (Easy)
Sphinx: Binary Search (Easy-Medium)
Hydra: Merge Sort (Medium)
Phoenix: Quick Sort (Medium-Hard)
Minotaur: Depth-First Search (Hard)
Unicorn: Breadth-First Search (Hard)
Algorithms
Linear Search
Binary Search
Merge Sort
Quick Sort
Depth-First Search
Breadth-First Search
Contributing

Contributions are welcome! If you’d like to add new creatures, algorithms, or features, follow these steps:

Fork the repository.
Create a new branch for your feature:
git checkout -b feature-name
Make your changes and ensure all tests pass.
Push your branch and open a pull request.
