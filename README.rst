=======
 REANA
=======

.. image:: https://img.shields.io/travis/reanahub/reana.io.svg
   :target: https://travis-ci.org/reanahub/reana.io

.. image:: https://badges.gitter.im/Join%20Chat.svg
   :target: https://gitter.im/reanahub/reana?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge

.. image:: https://img.shields.io/github/license/reanahub/reana.io.svg
   :target: https://github.com/reanahub/reana.io/blob/master/COPYING

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

   $ docker build -t reanahub/reanaio .

Running
-------

.. code-block:: console

   $ docker run --name reanaio -d -p 8080:8080 reanahub/reanaio
   $ firefox http://localhost:8080/
   $ docker stop reanaio && docker rm reanaio
