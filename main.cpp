#include <cli11/CLI11.hpp>
#include <iostream>

int main(int argc, char** argv)
{
  CLI::App app("App Name v0.0.0");
  std::string file;
  app.set_config("-c,--config", file, "Read a TOML config file", false);
  CLI11_PARSE(app, argc, argv);
  std::cout << "It works! Now try with -h flag!" << std::endl;
  return 0;
}
