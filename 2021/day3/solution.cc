#include <array>
#include <benchmark/benchmark.h>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

constexpr unsigned int bit_width = 12;
constexpr unsigned int masks[12]{1,      1 << 1, 1 << 2,  1 << 3,
                                 1 << 4, 1 << 5, 1 << 6,  1 << 7,
                                 1 << 8, 1 << 9, 1 << 10, 1 << 11};

unsigned int solve_1(const std::vector<unsigned int> &data) {
  unsigned int count[bit_width]{0};
  for (const auto elem : data) {
    for (auto i = 0; i < bit_width; ++i) {
      count[i] += (elem & (1 << i)) > 0;
    }
  }

  unsigned int gamma = 0;
  unsigned int half = data.size() / 2;
  for (auto i = 0; i < bit_width; ++i) {
    gamma |= (count[i] > half) << i;
  }

  return gamma * (gamma ^ 0xfff);
}

unsigned int solve_1_alex(const std::vector<std::string> &digits) {
  int counters[12] = {0};
  for (int i = 0; i < digits.size(); i++) {
    for (int j = 0; j < 12; j++) {
      counters[j] += digits[i][j] == '1';
    }
  }

  unsigned int most_common = 0;
  for (int i = 0; i < 12; i++) {
    unsigned int most_common_i = counters[i] > digits.size() / 2 ? 1 : 0;
    most_common |= most_common_i << (11 - i);
  }

  return most_common * (most_common ^ 0xfff);
}

unsigned int solve_2(const std::vector<unsigned int> &data) {
  unsigned int ox = 0;
  unsigned int co2 = 0;
  unsigned int num_elems_active = data.size();
  while (num_elems_active > 1) {
  }

  unsigned int ones[bit_width]{0};
  unsigned int zeros[bit_width]{0};
  for (const auto elem : data) {
    for (auto i = 0; i < bit_width; ++i) {
      if (elem & masks[i]) {
        ++ones[i];
      } else {
        ++zeros[i];
      }
    }
  }

  unsigned int ox_select[bit_width]{0};
  unsigned int co2_select[bit_width]{0};
  for (auto i = 0; i < bit_width; ++i) {
    if (ones[i] >= zeros[i]) {
      ox_select[i] = 1;
      co2_select[i] = 0;
    } else {
      ox_select[i] = 0;
      co2_select[i] = 1;
    }
  }
}

std::vector<unsigned int> load_input(const std::string &input_path) {
  std::vector<unsigned int> result;
  std::ifstream input(input_path);
  std::string line;
  while (std::getline(input, line)) {
    result.emplace_back(std::stoi(line, nullptr, 2));
  }

  return result;
}

std::vector<std::string> load_input_alex(const std::string &input_path) {
  std::vector<std::string> result;
  std::ifstream input(input_path);
  std::string line;
  while (std::getline(input, line)) {
    result.emplace_back(line);
  }

  return result;
}

static void benchmark_solve_1(benchmark::State &state) {
  const auto data = load_input("input.txt");
  unsigned int result;

  for (auto _ : state) {
    result = solve_1(data);
  }

  std::cout << "Part 1: " << result << std::endl;
}

static void benchmark_solve_1_alex(benchmark::State &state) {
  const auto data = load_input_alex("input.txt");
  unsigned int result;

  for (auto _ : state) {
    result = solve_1_alex(data);
  }

  std::cout << "Part 1 (Alex): " << result << std::endl;
}

static void benchmark_solve_2(benchmark::State &state) {
  const auto data = load_input("input.txt");
  unsigned int result;

  for (auto _ : state) {
    result = solve_2(data);
  }

  std::cout << "Part 2: " << result << std::endl;
}

BENCHMARK(benchmark_solve_1);
BENCHMARK(benchmark_solve_1_alex);
// BENCHMARK(benchmark_solve_2);

BENCHMARK_MAIN();
