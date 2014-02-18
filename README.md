# drupal Cookbook

This cookbook sets up Drupal core.

## Requirements

### Packages

- `git` - Git is required.

## Attributes

### drupal::git

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['drupal']['drupal_root']</tt></td>
    <td>String (path)</td>
    <td>The directory to put Drupal core in.</td>
    <td><tt>/var/www</tt></td>
  </tr>
  <tr>
    <td><tt>['drupal']['repository']</tt></td>
    <td>String (<a href="http://git-scm.com/docs/git-clone#_git_urls">Git URL</a>)</td>
    <td>The URL of the repository to clone Drupal from.</td>
    <td><tt>http://git.drupal.org/project/drupal.git</tt></td>
  </tr>
  <tr>
    <td><tt>['drupal']['reference']</tt></td>
    <td>String (<a href="http://git-scm.com/book/en/Git-Internals-Git-References">Git reference</a>)</td>
    <td>The name of a tag, branch or commit to check out.</td>
    <td><tt>true</tt></td>
  </tr>
</table>


## Usage

### drupal::git

Just include `drupal::git` in your node's `run_list`:


	{
	  "name":"my_node",
	  "run_list": [
	    "recipe[drupal::git]"
	  ]
	}

## Contributing

1. Fork the repository on Github.
2. Create a named feature branch (like `feature-install_with_composer`).
3. Write your change.
4. Write tests for your change.
5. Run the tests, ensuring they all pass.
6. Submit a Pull Request using Github.

## License

GNU General Public License, version 2 or later. This is the same as Drupal core itself.

## Authors

* M Parker ( @mparker17 on Github, [mparker17](http://drupal.org/user/536298) on d.o )
