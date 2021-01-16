FROM sphinxdoc/sphinx:3.4.3

LABEL "maintainer"="Ammar Askar <ammar@ammaraskar.com>"

ADD entrypoint.sh /entrypoint.sh
ADD entrypoint.py /entrypoint.py
ADD sphinx_action /sphinx_action

RUN pip install pipenv

ENTRYPOINT ["/entrypoint.sh"]
