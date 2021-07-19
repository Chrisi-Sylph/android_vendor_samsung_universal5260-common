LOCAL_PATH := $(call my-dir)

ifneq ($(filter hl3g hl3gxx hllte hlltexx,$(TARGET_DEVICE)),)

include $(CLEAR_VARS)

EGL_LIBS := libOpenCL.so libOpenCL.so.1 libOpenCL.so.1.1

EGL_32_SYMLINKS := $(addprefix $(TARGET_OUT_VENDOR)/lib/,$(EGL_LIBS))
$(EGL_32_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Symlink: EGL 32-bit lib: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/lib/egl/libGLES_mali.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(EGL_32_SYMLINKS) 

endif
