title: Library
---

### Publishing

When your application is ready, you may consider publishing it to the [library list](/libraries) to invite other people to start using it. 

1. Fork [qtxie/code-hub]
2. Clone the repository. (Optional, if you're not using Github)

    {% code %}
    $ git clone https://github.com/<username>/code-hub.git
    {% endcode %}

3. Edit `source/_data/plugins.yml` and add your application. For example:

    {% code %}
    - name: Redraw
      description: Painting app in Red language
      link: https://github.com/honix/Redraw
      tags:
        - draw
        - GUI
    {% endcode %}
4. Create a pull request and describe the change.

[qtxie/code-hub]: https://github.com/qtxie/code-hub