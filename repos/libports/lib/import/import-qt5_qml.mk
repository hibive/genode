IMPORT_QT5_INC=$(call select_from_repositories,lib/import/import-qt5.inc)

include $(IMPORT_QT5_INC)

ifeq ($(CONTRIB_DIR),)
QT5_QML_INC_DIR := $(realpath $(call select_from_repositories,include/QtQml)/..)
else
QT5_QML_INC_DIR := $(QT5_PORT_DIR)/include
endif

QT5_INC_DIR += $(QT5_QML_INC_DIR)
QT5_INC_DIR += $(QT5_QML_INC_DIR)/QtQml
QT5_INC_DIR += $(QT5_QML_INC_DIR)/QtQml/$(QT_VERSION)
QT5_INC_DIR += $(QT5_QML_INC_DIR)/QtQml/$(QT_VERSION)/QtQml
QT5_INC_DIR += $(QT5_QML_INC_DIR)/QtQml/$(QT_VERSION)/QtQml/private
