/*
 * This source file is part of an OSTIS project. For the latest info, see http://ostis.net
 * Distributed under the MIT License
 * (See accompanying file COPYING.MIT or copy at http://opensource.org/licenses/MIT)
 */

#include <stdio.h>
#include "sc_stream_memory.h"
#include "sc_stream_private.h"

#include "sc-base/sc_allocator.h"
#include "sc-base/sc_assert_utils.h"
#include "sc-base/sc_message.h"

struct _sc_memory_buffer
{
  char * data;         // pointer to data
  sc_uint32 size;      // size of data
  sc_uint32 pos;       // current position
  sc_bool data_owner;  // ownership on data buffer
};

typedef struct _sc_memory_buffer sc_memory_buffer;

sc_result sc_stream_memory_read(const sc_stream * stream, sc_char * data, sc_uint32 length, sc_uint32 * bytes_read)
{
  sc_memory_buffer * buffer = (sc_memory_buffer *)stream->handler;
  sc_assert(buffer != null_ptr);

  if (buffer->size == 0)
    return SC_RESULT_ERROR;

  if (length > (buffer->size - buffer->pos))
    *bytes_read = buffer->size - buffer->pos;
  else
    *bytes_read = length;

  sc_mem_cpy(data, &(buffer->data[buffer->pos]), *bytes_read);
  buffer->pos += *bytes_read;

  return SC_RESULT_OK;
}

sc_result sc_stream_memory_write(const sc_stream * stream, sc_char * data, sc_uint32 length, sc_uint32 * bytes_written)
{
  return SC_RESULT_ERROR;
}

sc_result sc_stream_memory_seek(const sc_stream * stream, sc_stream_seek_origin origin, sc_uint32 offset)
{
  sc_memory_buffer * buffer = (sc_memory_buffer *)stream->handler;
  sc_assert(buffer != null_ptr);

  switch (origin)
  {
  case SC_STREAM_SEEK_END:
    if (offset > buffer->size)
      return SC_RESULT_ERROR_INVALID_PARAMS;
    buffer->pos = buffer->size - offset;
    break;

  case SC_STREAM_SEEK_CUR:
    if (offset > (buffer->size - buffer->pos))
      return SC_RESULT_ERROR_INVALID_PARAMS;
    buffer->pos += offset;
    break;

  case SC_STREAM_SEEK_SET:
    if (offset > buffer->size)
      return SC_RESULT_ERROR_INVALID_PARAMS;
    buffer->pos = offset;
    break;
  };

  return SC_RESULT_OK;
}

sc_result sc_stream_memory_tell(const sc_stream * stream, sc_uint32 * position)
{
  sc_memory_buffer * buffer = (sc_memory_buffer *)stream->handler;
  sc_assert(buffer != null_ptr);

  *position = buffer->pos;

  return SC_RESULT_OK;
}

sc_result sc_stream_memory_free_handler(const sc_stream * stream)
{
  sc_memory_buffer * buffer = (sc_memory_buffer *)stream->handler;
  sc_assert(buffer != null_ptr);

  if (buffer->data_owner == SC_TRUE)
  {
    sc_assert(buffer->data != null_ptr);
    sc_mem_free(buffer->data);
  }

  sc_mem_free(buffer);

  return SC_RESULT_OK;
}

sc_bool sc_stream_memory_eof(const sc_stream * stream)
{
  sc_memory_buffer * buffer = (sc_memory_buffer *)stream->handler;
  sc_assert(buffer != null_ptr);

  if (buffer->pos == buffer->size)
    return SC_TRUE;

  return SC_FALSE;
}

sc_stream * sc_stream_memory_new(const sc_char * buffer, sc_uint buffer_size, sc_uint8 flags, sc_bool data_owner)
{
  if (flags & SC_STREAM_FLAG_WRITE || flags & SC_STREAM_FLAG_APPEND)
  {
    sc_message("Memory stream doesn't support SC_STREAM_APPEND and SC_STREAM_WRITE flags");
    return null_ptr;
  }

  sc_assert(flags & SC_STREAM_FLAG_READ);
  sc_assert(buffer != null_ptr);

  sc_memory_buffer * data_buffer = sc_mem_new(sc_memory_buffer, 1);

  data_buffer->data = (char *)buffer;
  data_buffer->size = buffer_size;
  data_buffer->pos = 0;
  data_buffer->data_owner = data_owner;

  sc_stream * stream = sc_mem_new(sc_stream, 1);

  // tell and seek supported anyway
  stream->flags = flags | SC_STREAM_FLAG_SEEK | SC_STREAM_FLAG_TELL;
  stream->handler = data_buffer;

  stream->eof_func = &sc_stream_memory_eof;
  stream->free_func = &sc_stream_memory_free_handler;
  stream->read_func = &sc_stream_memory_read;
  stream->seek_func = &sc_stream_memory_seek;
  stream->tell_func = &sc_stream_memory_tell;
  stream->write_func = null_ptr;  // doesn't support writing

  return stream;
}
