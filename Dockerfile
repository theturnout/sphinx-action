FROM sphinxdoc/sphinx:3.4.3

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

RUN pipx install pipenv && \
    pipenv install --system --deploy --ignore-pipfile && \
    pipenv shell

ENTRYPOINT ["/entrypoint.py"]
