class MainController < ApplicationController
  # Initialize an empty array to store chat messages as a class variable.
  cattr_accessor :chat_history
  self.chat_history = []

  def index
    # Read chat history from the file and store it in memory.
    @chat_history = read_chat_history
  end

  def save
    content = params[:content]
  
    # Read the existing chat history from the file
    existing_chat_history = read_chat_history
  
    # Append the new message to the existing chat history with a newline character
    updated_chat_history = "#{existing_chat_history}\n#{content}"
  
    # Save the updated chat history back to the file
    write_chat_history(updated_chat_history)
  
    # Update the chat_history variable for the view
    self.chat_history = updated_chat_history
  
    redirect_to main_index_path
  end
  
  def erase_history
    # Clear the chat history in memory and save an empty string to the file.
    self.chat_history = ''
    write_chat_history('')

    redirect_to main_index_path, notice: "Chat history has been erased."
  end

  def trigger_texting_task
    ScriptRunner.run
    redirect_to main_index_path, notice: "Texting task triggered."
  end

  private

  def read_chat_history
    if File.exist?('yourfile.txt')
      File.read('yourfile.txt')
    else
      ''
    end
  end

  def write_chat_history(content)
    File.write('yourfile.txt', content)
  end
end