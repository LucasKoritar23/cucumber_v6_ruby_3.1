def log_util(message, log = nil)
    time = Time.now.strftime("%Y-%m-%d %H:%M:%S.%L")
    final_message = "[POC][QA][#{time}] - #{message}"
    Allure.add_attachment(name: "log", source: final_message, type: Allure::ContentType::TXT)
    log(final_message)
end