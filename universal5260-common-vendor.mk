PRODUCT_SOONG_NAMESPACES += \
    vendor/samsung/universal5260-common

# Include blob-finder
include vendor/samsung/universal5260-common/find-vendor-blobs.mk

# Proprietary blobs
PRODUCT_COPY_FILES += $(call find-vendor-blobs,vendor/samsung/universal5260-common/proprietary)

