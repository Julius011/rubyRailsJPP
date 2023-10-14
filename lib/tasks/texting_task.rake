task :texting_task => :environment do
  class ScriptRunner
    def self.run
      messages = [
        "Hello",
        "HEY",
        "Is there anyone here?",
        "Yoo",
        "Hey Guys!"
      ]

      content = messages.sample  # Select a random message from the array

      File.open('yourfile.txt', 'a') do |file|
        file.puts(content)
      end
    end
  end

  ScriptRunner.run
end