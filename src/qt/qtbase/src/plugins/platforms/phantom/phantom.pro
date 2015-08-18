TARGET = qphantom

PLUGIN_TYPE = platforms
PLUGIN_CLASS_NAME = PhantomIntegrationPlugin
!equals(TARGET, $$QT_DEFAULT_QPA_PLUGIN): PLUGIN_EXTENDS = -
load(qt_plugin)

QT += core-private gui-private platformsupport-private

CONFIG += qpa/genericunixfontdatabase

SOURCES =   main.cpp \
            phantomintegration.cpp \
            phantombackingstore.cpp
HEADERS =   phantomintegration.h \
            phantombackingstore.h

OTHER_FILES += phantom.json
