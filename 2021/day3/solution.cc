#include <array>
#include <benchmark/benchmark.h>
#include <fstream>
#include <iostream>
#include <string>
#include <vector>

constexpr unsigned int bit_width = 12;
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
  unsigned int num_ox_elems_active = data.size();
  unsigned int num_co2_elems_active = data.size();
  std::vector<bool> ox_active(data.size(), true);
  std::vector<bool> co2_active(data.size(), true);
  unsigned int ox_active_idx = 0;
  unsigned int co2_active_idx = 0;
  int bit = bit_width - 1;
  while (bit >= 0) {
    unsigned int ox_count = 0;
    unsigned int co2_count = 0;
    for (unsigned int i = 0; i < data.size(); ++i) {
      ox_count += ox_active[i] && (data[i] & (1 << bit)) > 0;
      co2_count += co2_active[i] && (data[i] & (1 << bit)) > 0;
    }

    unsigned int ox_select = ox_count >= (num_ox_elems_active + 1) / 2;
    unsigned int co2_select = co2_count < (num_co2_elems_active + 1) / 2;
    // std::cout << "Bit: " << bit_width - bit << std::endl;
    // std::cout << "Ox count: " << ox_count
    //           << " Ox active: " << num_ox_elems_active
    //           << " Ox select: " << ox_select << "\tCo2 count: " << co2_count
    //           << " Co2 active: " << num_co2_elems_active
    //           << " Co2 select: " << co2_select << std::endl;

    unsigned int new_num_ox_active = 0;
    unsigned int new_num_co2_active = 0;
    for (unsigned int i = 0; i < data.size(); ++i) {
      ox_active[i] =
          ox_active[i] && ((data[i] & (1 << bit)) == ox_select << bit);
      if (ox_active[i]) {
        ++new_num_ox_active;
        ox_active_idx = i;
      }

      co2_active[i] =
          co2_active[i] && ((data[i] & (1 << bit)) == co2_select << bit);
      if (co2_active[i]) {
        ++new_num_co2_active;
        co2_active_idx = i;
      }
    }

    num_ox_elems_active = new_num_ox_active;
    num_co2_elems_active = new_num_co2_active;

    --bit;
  }

  // std::cout << ox_active_idx << ": " << data[ox_active_idx] << "\t"
  //           << co2_active_idx << ": " << data[co2_active_idx] << std::endl;
  // std::cout << "Num true ox: "
  //           << std::count(ox_active.begin(), ox_active.end(), true)
  //           << "\t Num true co2: "
  //           << std::count(co2_active.begin(), co2_active.end(), true)
  //           << std::endl;
  return data[ox_active_idx] * data[co2_active_idx];
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
BENCHMARK(benchmark_solve_2);

BENCHMARK_MAIN();
