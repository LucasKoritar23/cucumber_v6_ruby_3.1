require 'rspec'
require 'cucumber'
require 'allure-cucumber'
require 'pry'
require 'qas_dock_gem'

Allure.configure do |c|
    c.results_directory = "reports/allure-results"
    c.clean_results_directory = true
  end