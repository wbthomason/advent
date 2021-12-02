#include <algorithm>
#include <benchmark/benchmark.h>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

enum class Direction { Forward, Down, Up };

struct Movement {
  Direction d;
  unsigned int amount;
};

unsigned int solve_1(const std::vector<Movement> &data) {
  unsigned int depth = 0;
  unsigned int dist = 0;
  // Splitting the loops like this helps, as does using the if for the first and
  // the switch for the second
  for (const auto [d, amount] : data) {
    if (d == Direction::Forward) {
      dist += amount;
    }
  }

  for (const auto [d, amount] : data) {
    switch (d) {
    case Direction::Down:
      depth += amount;
      break;
    case Direction::Up:
      depth -= amount;
      break;
    };
  }

  return depth * dist;
}

unsigned int solve_2(const std::vector<Movement> &data) {
  unsigned int depth = 0;
  unsigned int dist = 0;
  unsigned int aim = 0;
  for (const auto [d, amount] : data) {
    switch (d) {
    case Direction::Forward:
      dist += amount;
      depth += aim * amount;
      break;
    case Direction::Down:
      aim += amount;
      break;
    case Direction::Up:
      aim -= amount;
      break;
    };
  }

  return depth * dist;
}

std::vector<Movement> load_input(const std::string &input_path) {
  std::vector<Movement> result;
  std::ifstream input(input_path);
  std::string line;
  while (std::getline(input, line)) {
    const auto space_idx = line.find(' ');
    const auto direction_str = line.substr(0, space_idx);
    const auto amount = std::stoi(line.substr(space_idx + 1));
    Direction direction;
    if (direction_str == "forward") {
      direction = Direction::Forward;
    } else if (direction_str == "up") {
      direction = Direction::Up;
    } else if (direction_str == "down") {
      direction = Direction::Down;
    }

    result.emplace_back(Movement{direction, static_cast<unsigned int>(amount)});
  }

  return result;
}

static void benchmark_solve_1(benchmark::State &state) {
  const auto data = load_input("input.txt");
  int result;

  for (auto _ : state) {
    result = solve_1(data);
  }

  std::cout << "Part 1: " << result << std::endl;
}

static void benchmark_solve_2(benchmark::State &state) {
  const auto data = load_input("input.txt");
  int result;

  for (auto _ : state) {
    result = solve_2(data);
  }

  std::cout << "Part 2: " << result << std::endl;
}

BENCHMARK(benchmark_solve_1);
BENCHMARK(benchmark_solve_2);

BENCHMARK_MAIN();
