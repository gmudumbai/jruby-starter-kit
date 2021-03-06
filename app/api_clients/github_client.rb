require 'net/http'
require 'uri'
require 'json'

# Some dummy remote URL getter just to show WebMock in action in specs
class GithubClient

  def description(repo_name)
    uri = URI.parse('https://api.github.com/orgs/octokit/repos')

    response = Net::HTTP.get_response(uri)
    repos = JSON.parse(response.body)
    repo_info = repos.find { |info| info['name'] == repo_name }
    logger.info('repo_info: ' + repo_info.inspect)
    repo_info['description'] if repo_info
  end

end
