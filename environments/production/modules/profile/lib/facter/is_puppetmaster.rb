Facter.add(:is_puppetmaster) do
	setcode do
		is_puppetmaster = Facter.value(:hostname)
		case is_puppetmaster
			when 'host-agent1'
				true
			else
				false
			end
		end
	end