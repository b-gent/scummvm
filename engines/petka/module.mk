MODULE := engines/petka

MODULE_OBJS = \
    detection.o \
    file_mgr.o \
    petka.o \
    q_interface.o \
    q_manager.o \
    q_message_object.o \
    q_object.o \
    q_object_bg.o \
    q_object_case.o \
    q_object_cursor.o \
    q_object_star. o \
    q_system.o

# This module can be built as a plugin
ifeq ($(ENABLE_PETKA), DYNAMIC_PLUGIN)
PLUGIN := 1
endif

# Include common rules
include $(srcdir)/rules.mk