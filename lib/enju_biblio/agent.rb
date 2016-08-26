class Agent
  def self.import_agents(agent_lists)
    STDERR.puts "new import_agents"
    agents = []
    agent_lists.each do |agent_list|
      name_and_role = agent_list[:full_name].split('||')
      if agent_list[:agent_identifier].present?
        agent = Agent.where(agent_identifier: agent_list[:agent_identifier]).first
      else
        agent = Agent.where(full_name: name_and_role[0]).first
      end
      role_type = name_and_role[1].to_s.strip
      unless agent
        agent = Agent.new(
          full_name: name_and_role[0],
          full_name_transcription: agent_list[:full_name_transcription],
          agent_identifier: agent_list[:agent_identifier],
          language_id: 1
        )
        agent.required_role = Role.where(name: 'Guest').first
        agent.save
      end
      agents << agent
    end
    agents.uniq!
    agents
  end
end
