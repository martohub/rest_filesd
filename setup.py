# -*- coding: utf-8 -*-


from setuptools import setup, find_packages


with open('README.md') as f:
    readme = f.read()

setup(
    name='rest_filesd',
    version='1',
    description='Prometheus rest to file sd yaml',
    long_description=readme,
    author='',
    author_email='',
    url='',
    packages=find_packages(exclude=('tests'))
)
