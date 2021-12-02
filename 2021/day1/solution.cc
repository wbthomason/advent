#include <benchmark/benchmark.h>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

int solve_1(const std::vector<int> &data) {
  unsigned int increases = 0;
  for (std::size_t i = 1; i < data.size(); ++i) {
    increases += data[i] > data[i - 1];
  }

  return increases;
}

int solve_2(const std::vector<unsigned short> &data) {
  unsigned int increases = 0;
  for (unsigned int i = 3; i < data.size(); ++i) {
    increases += data[i] > data[i - 3];
  }

  return increases;
}

template <typename T> std::vector<T> load_input(const std::string &input_path) {
  std::vector<T> result;
  std::ifstream input(input_path);
  std::string line;
  while (std::getline(input, line)) {
    result.emplace_back(std::stoi(line));
  }

  return result;
}

static void benchmark_solve_1(benchmark::State &state) {
  const auto data = load_input<int>("input.txt");
  int result;

  for (auto _ : state) {
    result = solve_1(data);
  }

  std::cout << "Part 1: " << result << std::endl;
}

static void benchmark_solve_2(benchmark::State &state) {
  const auto data = load_input<unsigned short>("input.txt");
  int result;

  for (auto _ : state) {
    result = solve_2(data);
  }

  std::cout << "Part 2: " << result << std::endl;
}

BENCHMARK(benchmark_solve_1);
BENCHMARK(benchmark_solve_2);

BENCHMARK_MAIN();
