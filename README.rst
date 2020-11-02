=======
 REANA
=======

.. image:: https://github.com/reanahub/www.reana.io/workflows/CI/badge.svg
   :target: https://github.com/reanahub/www.reana.io/actions

.. image:: https://badges.gitter.im/Join%20Chat.svg
   :target: https://gitter.im/reanahub/reana?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge

.. image:: https://img.shields.io/github/license/reanahub/www.reana.io.svg
   :target: https://github.com/reanahub/www.reana.io/blob/master/LICENSE

About
-----

REANA is a platform for reusable research data analyses. It permits researchers
to structure their analysis data, code, environment and workflows in reusable
manner. REANA command-line client allows users to instantiate and run
computational research data analysis workflows on remote containerised compute
clouds. REANA was born to target the use case of particle physics analyses, but
is applicable to any scientific discipline.

This repository holds the REANA project web site. It uses `Lektor
<https://www.getlektor.com/>`_ static web site generator.

Installation
------------

.. code-block:: console

   $ docker build -t reanahub/wwwreanaio .

Running
-------

.. code-block:: console

   $ docker run --name wwwreanaio -d -p 8080:8080 reanahub/wwwreanaio
   $ firefox http://localhost:8080/
   $ docker stop wwwreanaio && docker rm wwwreanaio
