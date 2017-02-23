# modified by Declan Moran

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/. \

#LIBZIP_PATH_REL := .
LIBZIP_PATH_REL := ../src

# $(warning LOCAL_PATH = $(LOCAL_PATH))
# $(warning LIBZIP_PATH_REL = $(LIBZIP_PATH_REL))
# $(warning LOCAL_C_INCLUDES = $(LOCAL_C_INCLUDES))

include $(CLEAR_VARS)

LOCAL_MODULE    := libzip
LOCAL_SRC_FILES :=\
	$(LIBZIP_PATH_REL)/mkstemp.c \
	$(LIBZIP_PATH_REL)/zip_add.c \
	$(LIBZIP_PATH_REL)/zip_add_dir.c \
	$(LIBZIP_PATH_REL)/zip_add_entry.c \
	$(LIBZIP_PATH_REL)/zip_buffer.c \
	$(LIBZIP_PATH_REL)/zip_close.c \
	$(LIBZIP_PATH_REL)/zip_delete.c \
	$(LIBZIP_PATH_REL)/zip_dir_add.c \
	$(LIBZIP_PATH_REL)/zip_dirent.c \
	$(LIBZIP_PATH_REL)/zip_discard.c \
	$(LIBZIP_PATH_REL)/zip_entry.c \
	$(LIBZIP_PATH_REL)/zip_err_str.c \
	$(LIBZIP_PATH_REL)/zip_error.c \
	$(LIBZIP_PATH_REL)/zip_error_clear.c \
	$(LIBZIP_PATH_REL)/zip_error_get.c \
	$(LIBZIP_PATH_REL)/zip_error_get_sys_type.c \
	$(LIBZIP_PATH_REL)/zip_error_strerror.c \
	$(LIBZIP_PATH_REL)/zip_error_to_str.c \
	$(LIBZIP_PATH_REL)/zip_extra_field.c \
	$(LIBZIP_PATH_REL)/zip_extra_field_api.c \
	$(LIBZIP_PATH_REL)/zip_fclose.c \
	$(LIBZIP_PATH_REL)/zip_fdopen.c \
	$(LIBZIP_PATH_REL)/zip_file_add.c \
	$(LIBZIP_PATH_REL)/zip_file_error_clear.c \
	$(LIBZIP_PATH_REL)/zip_file_error_get.c \
	$(LIBZIP_PATH_REL)/zip_file_get_comment.c \
	$(LIBZIP_PATH_REL)/zip_file_get_external_attributes.c \
	$(LIBZIP_PATH_REL)/zip_file_get_offset.c \
	$(LIBZIP_PATH_REL)/zip_file_rename.c \
	$(LIBZIP_PATH_REL)/zip_file_replace.c \
	$(LIBZIP_PATH_REL)/zip_file_set_comment.c \
	$(LIBZIP_PATH_REL)/zip_file_set_external_attributes.c \
	$(LIBZIP_PATH_REL)/zip_file_set_mtime.c \
	$(LIBZIP_PATH_REL)/zip_file_strerror.c \
	$(LIBZIP_PATH_REL)/zip_filerange_crc.c \
	$(LIBZIP_PATH_REL)/zip_fopen.c \
	$(LIBZIP_PATH_REL)/zip_fopen_encrypted.c \
	$(LIBZIP_PATH_REL)/zip_fopen_index.c \
	$(LIBZIP_PATH_REL)/zip_fopen_index_encrypted.c \
	$(LIBZIP_PATH_REL)/zip_fread.c \
	$(LIBZIP_PATH_REL)/zip_get_archive_comment.c \
	$(LIBZIP_PATH_REL)/zip_get_archive_flag.c \
	$(LIBZIP_PATH_REL)/zip_get_compression_implementation.c \
	$(LIBZIP_PATH_REL)/zip_get_encryption_implementation.c \
	$(LIBZIP_PATH_REL)/zip_get_file_comment.c \
	$(LIBZIP_PATH_REL)/zip_get_name.c \
	$(LIBZIP_PATH_REL)/zip_get_num_entries.c \
	$(LIBZIP_PATH_REL)/zip_get_num_files.c \
	$(LIBZIP_PATH_REL)/zip_io_util.c \
	$(LIBZIP_PATH_REL)/zip_memdup.c \
	$(LIBZIP_PATH_REL)/zip_name_locate.c \
	$(LIBZIP_PATH_REL)/zip_new.c \
	$(LIBZIP_PATH_REL)/zip_open.c \
	$(LIBZIP_PATH_REL)/zip_rename.c \
	$(LIBZIP_PATH_REL)/zip_replace.c \
	$(LIBZIP_PATH_REL)/zip_set_archive_comment.c \
	$(LIBZIP_PATH_REL)/zip_set_archive_flag.c \
	$(LIBZIP_PATH_REL)/zip_set_default_password.c \
	$(LIBZIP_PATH_REL)/zip_set_file_comment.c \
	$(LIBZIP_PATH_REL)/zip_set_file_compression.c \
	$(LIBZIP_PATH_REL)/zip_set_name.c \
	$(LIBZIP_PATH_REL)/zip_source_begin_write.c \
	$(LIBZIP_PATH_REL)/zip_source_buffer.c \
	$(LIBZIP_PATH_REL)/zip_source_call.c \
	$(LIBZIP_PATH_REL)/zip_source_close.c \
	$(LIBZIP_PATH_REL)/zip_source_commit_write.c \
	$(LIBZIP_PATH_REL)/zip_source_crc.c \
	$(LIBZIP_PATH_REL)/zip_source_deflate.c \
	$(LIBZIP_PATH_REL)/zip_source_error.c \
	$(LIBZIP_PATH_REL)/zip_source_file.c \
	$(LIBZIP_PATH_REL)/zip_source_filep.c \
	$(LIBZIP_PATH_REL)/zip_source_free.c \
	$(LIBZIP_PATH_REL)/zip_source_function.c \
	$(LIBZIP_PATH_REL)/zip_source_is_deleted.c \
	$(LIBZIP_PATH_REL)/zip_source_layered.c \
	$(LIBZIP_PATH_REL)/zip_source_open.c \
	$(LIBZIP_PATH_REL)/zip_source_pkware.c \
	$(LIBZIP_PATH_REL)/zip_source_read.c \
	$(LIBZIP_PATH_REL)/zip_source_remove.c \
	$(LIBZIP_PATH_REL)/zip_source_rollback_write.c \
	$(LIBZIP_PATH_REL)/zip_source_seek.c \
	$(LIBZIP_PATH_REL)/zip_source_seek_write.c \
	$(LIBZIP_PATH_REL)/zip_source_stat.c \
	$(LIBZIP_PATH_REL)/zip_source_supports.c \
	$(LIBZIP_PATH_REL)/zip_source_tell.c \
	$(LIBZIP_PATH_REL)/zip_source_tell_write.c \
	$(LIBZIP_PATH_REL)/zip_source_window.c \
	$(LIBZIP_PATH_REL)/zip_source_write.c \
	$(LIBZIP_PATH_REL)/zip_source_zip.c \
	$(LIBZIP_PATH_REL)/zip_source_zip_new.c \
	$(LIBZIP_PATH_REL)/zip_stat.c \
	$(LIBZIP_PATH_REL)/zip_stat_index.c \
	$(LIBZIP_PATH_REL)/zip_stat_init.c \
	$(LIBZIP_PATH_REL)/zip_strerror.c \
	$(LIBZIP_PATH_REL)/zip_string.c \
	$(LIBZIP_PATH_REL)/zip_unchange.c \
	$(LIBZIP_PATH_REL)/zip_unchange_all.c \
	$(LIBZIP_PATH_REL)/zip_unchange_archive.c \
	$(LIBZIP_PATH_REL)/zip_unchange_data.c \
	$(LIBZIP_PATH_REL)/zip_utf-8.c

LOCAL_C_INCLUDES += \
  $(LOCAL_PATH)/.. 
  
LOCAL_LDLIBS := -lz

include $(BUILD_SHARED_LIBRARY)
#include $(BUILD_STATIC_LIBRARY)
