#!/usr/bin/env python
import sys, os, time

print('''
  /$$$$$$  /$$$$$$$$ /$$      /$$ /$$$$$$$   /$$$$$$  /$$    /$$
 /$$__  $$|_____ $$/| $$$    /$$$| $$__  $$ /$$$_  $$| $$   | $$
| $$  \ $$     /$$/ | $$$$  /$$$$| $$  \ $$| $$$$\ $$| $$   | $$
| $$$$$$$$    /$$/  | $$ $$/$$ $$| $$  | $$| $$ $$ $$|  $$ / $$/
| $$__  $$   /$$/   | $$  $$$| $$| $$  | $$| $$\ $$$$ \  $$ $$/
| $$  | $$  /$$/    | $$\  $ | $$| $$  | $$| $$ \ $$$  \  $$$/
| $$  | $$ /$$/     | $$ \/  | $$| $$$$$$$/|  $$$$$$/   \  $/
|__/  |__/|__/      |__/     |__/|_______/  \______/     \_/
			A 7 M D 0 V   S C R I P T S  2 0 1 8 (c)
''')
print("Hello Ahmad, welcome online ! Please wait while menu is being loaded.")

time.sleep(5)      
      
# -*- coding: utf-8 -*-
#title           :A7.py
#description     :This program provides access to A7s Python scripts
#author          :A7-1337
#date            :01-01-0110
#version         :0.1
#usage           :python A7.py
#notes           :
#python_version  :2.7.6  

#=======================================================================
      
# Main definition - constants
menu_actions  = {}  
 
# =======================
#     MENUS FUNCTIONS
# =======================
 
# Main menu
def main_menu():
    os.system('clear')
    
    print "Welcome A7,\n"
    print "Please choose the menu you want to start:"
    print "1. View Scripts"
    print "2. About"
    print "\n0. Quit"
    choice = raw_input(" >>  ")
    exec_menu(choice)
 
    return
 
# Execute menu
def exec_menu(choice):
    os.system('clear')
    ch = choice.lower()
    if ch == '':
        menu_actions['main_menu']()
    else:
        try:
            menu_actions[ch]()
        except KeyError:
            print "Invalid selection, please try again.\n"
            menu_actions['main_menu']()
    return
 
# Menu 1
def menu1():
    print "Python Scripts Available: \n"
    print "no scripts available added here. why dont u update me a7 :( \n"
    print "9. Back"
    print "0. Quit"
    choice = raw_input(" >>  ")
    exec_menu(choice)
    return
 
 
# Menu 2
def menu2():
    print "About !\n"
    print "i need to keep up with so many projects, no time :(  \n"
    print "9. Back"
    print "0. Quit" 
    choice = raw_input(" >>  ")
    exec_menu(choice)
    return
 
# Back to main menu
def back():
    menu_actions['main_menu']()
 
# Exit program
def exit():
    sys.exit()
 
# =======================
#    MENUS DEFINITIONS
# =======================
 
# Menu definition
menu_actions = {
    'main_menu': main_menu,
    '1': menu1,
    '2': menu2,
    '9': back,
    '0': exit,
}
 
# =======================
#      MAIN PROGRAM
# =======================
 
# Main Program
if __name__ == "__main__":
    # Launch main menu
    main_menu()
