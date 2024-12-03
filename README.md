# **Mythical Creatures DSA Practice**

This repository provides a fun and interactive way to practice Data Structures and Algorithms (DSA) concepts using mythical creatures as the theme. Each mythical creature corresponds to a specific algorithm or data structure concept, with tasks designed to reinforce learning through Test-Driven Development (TDD). This 

---

## **Setup Instructions**

### **Prerequisites**
- Ruby (version 3.0 or newer recommended)
- Bundler (to manage dependencies)
- Git (to clone the repository)

### **Clone the Repository**
Open your terminal.
Clone the repository:
  
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

Creatures:

1. Gremlin: Linear Search (Easy)

2. Sphinx: Binary Search (Easy-Medium)

3. Hydra: Merge Sort (Medium)

4. Phoenix: Quick Sort (Medium-Hard)

5. Minotaur: Depth-First Search (Hard)

6. Unicorn: Breadth-First Search (Hard)

Algorithms:

1. Linear Search

2. Binary Search

3. Merge Sort

4. Quick Sort

5. Depth-First Search

6. Breadth-First Search

Contributing

Contributions are welcome! If you’d like to add new creatures, algorithms, or features, follow these steps:

Fork the repository.
Create a new branch for your feature:
git checkout -b feature-name
Make your changes and ensure all tests pass.
Push your branch and open a pull request.
