title: Script
---

A script is a single file red script.

### Publishing

When your application is ready, you may consider publishing it to the [script list](/scripts) to invite other people to start using it. 

1. Fork [qtxie/code-hub]
2. Clone the repository. (Optional)

    {% code %}
    $ git clone https://github.com/<username>/code-hub.git
    {% endcode %}

3. Edit `source/_data/plugins.yml` and add your application. For example:

    {% code %}
    - name: logo_turtle
      description: logo turtle in Red
      link: https://gist.github.com/mydoghasworms/bd342a10f2b806f050ed903e5be435a0
      tags:
        - draw
        - parse
        - GUI
    {% endcode %}

4. Create a pull request and describe the change.

[qtxie/code-hub]: https://github.com/qtxie/code-hub