# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = Train1

CONFIG += sailfishapp

SOURCES += src/Train1.cpp

DISTFILES += qml/Train1.qml \
    qml/cover/CoverPage.qml \
    qml/pages/1.qml \
    qml/pages/FirstPage.qml \
    qml/pages/Search_window.qml \
    qml/pages/SecondPage.qml \
    qml/pages/SecondPage_копия.qml \
    rpm/Train1.changes.in \
    rpm/Train1.changes.run.in \
    rpm/Train1.spec \
    rpm/Train1.yaml \
    translations/*.ts \
    Train1.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/Train1-de.ts
