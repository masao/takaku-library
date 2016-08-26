class Agent < ActiveRecord::Base
  def self.import_agents(agent_lists)
    STDERR.puts "new import_agents"
    agents = super(agent_lists)
    agents.uniq!
    agents
  end
end
