title: Library
---

### Publishing

When your application is ready, you may consider publishing it to the [library list](/libraries) to invite other people to start using it. 

1. Fork [qtxie/code-hub]
2. Clone the repository. (Optional, if you're not using github)

    {% code %}
    $ git clone https://github.com/<username>/code-hub.git
    {% endcode %}

3. Edit `source/_data/libraries.yml` and add your application. For example:

    {% code %}
    - name: redCV
      description: Computer Vision with Red Language
      link: https://github.com/ldci/redCV
      tags:
        - OpenCV
        - GUI
    {% endcode %}
4. Create a pull request and describe the change.

[qtxie/code-hub]: https://github.com/qtxie/code-hub