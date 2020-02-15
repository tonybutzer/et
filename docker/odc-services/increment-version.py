# -*- coding: utf-8 -*-
"""increment-version - increments the Dockerfile:

    so Make build does the right thing

Examples:
        format:  python increment-version [which-ENV-var]

        $ python increment-version buildversion
        $ python increment-version tversion


Todo:
    * For module TODOs

.. _Google Python Style Guide:
   http://google.github.io/styleguide/pyguide.html

Code tells you how; Comments tell you why. -- Jeff Attwood

"""

import sys
import subprocess

def increment_line(line):
    """ increment line and use sed to modify file """
    print(line)
    line = line.rstrip()
    env,v_number = line.split('=')
    print(v_number)
    v_number = float(v_number) + .1
    print(v_number)
    # now do the sed
    new_env_line = env + "=" + str(v_number)
    sed_cmd = ['sed -i -e \'s/' + line + '/' + new_env_line + '/\' Dockerfile',"Dockerfile"]
    print(new_env_line)
    print(sed_cmd)

    subprocess.call(sed_cmd, shell=True)


def modify_docker(version):
    """ reads docker file and will increment version"""
    # Open the file with read only permit
    f = open('Dockerfile', "r")
    # use readlines to read all lines in the file
    # The variable "lines" is a list containing all lines in the file
    lines = f.readlines()
    # close the file after reading the lines.
    for line in lines:
        if version in line:
            print(line)
            increment_line(line)
    f.close()
    print(version)

def mainfunc(version_to_increment):
    """ increments version main func - duh!!"""
    """ prints hello world - duh!!"""
    # just prints hello world
    print ("hello world")
    modify_docker(version_to_increment)



if __name__ == '__main__':
    try:
        sys.argv[1]
    except NameError:
        version_to_increment = 'buildversion'
    else:
        version_to_increment = sys.argv[1]
    mainfunc(version_to_increment)
