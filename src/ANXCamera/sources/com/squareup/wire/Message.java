package com.squareup.wire;

import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import java.io.IOException;
import java.io.ObjectStreamException;
import java.io.OutputStream;
import java.io.Serializable;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

public abstract class Message<M extends Message<M, B>, B extends Builder<M, B>> implements Serializable {
    private static final long serialVersionUID = 0;
    private final transient ProtoAdapter<M> adapter;
    transient int cachedSerializedSize = 0;
    protected transient int hashCode = 0;
    private final transient ByteString unknownFields;

    public static abstract class Builder<T extends Message<T, B>, B extends Builder<T, B>> {
        Buffer unknownFieldsBuffer;
        ProtoWriter unknownFieldsWriter;

        protected Builder() {
        }

        public final Builder<T, B> addUnknownField(int i, FieldEncoding fieldEncoding, Object obj) {
            if (this.unknownFieldsWriter == null) {
                this.unknownFieldsBuffer = new Buffer();
                this.unknownFieldsWriter = new ProtoWriter(this.unknownFieldsBuffer);
            }
            try {
                fieldEncoding.rawProtoAdapter().encodeWithTag(this.unknownFieldsWriter, i, obj);
                return this;
            } catch (IOException unused) {
                throw new AssertionError();
            }
        }

        public final Builder<T, B> addUnknownFields(ByteString byteString) {
            if (byteString.size() > 0) {
                if (this.unknownFieldsWriter == null) {
                    this.unknownFieldsBuffer = new Buffer();
                    this.unknownFieldsWriter = new ProtoWriter(this.unknownFieldsBuffer);
                }
                try {
                    this.unknownFieldsWriter.writeBytes(byteString);
                } catch (IOException unused) {
                    throw new AssertionError();
                }
            }
            return this;
        }

        public abstract T build();

        public final ByteString buildUnknownFields() {
            Buffer buffer = this.unknownFieldsBuffer;
            return buffer != null ? buffer.clone().readByteString() : ByteString.EMPTY;
        }

        public final Builder<T, B> clearUnknownFields() {
            this.unknownFieldsWriter = null;
            this.unknownFieldsBuffer = null;
            return this;
        }
    }

    protected Message(ProtoAdapter<M> protoAdapter, ByteString byteString) {
        if (protoAdapter == null) {
            throw new NullPointerException("adapter == null");
        } else if (byteString != null) {
            this.adapter = protoAdapter;
            this.unknownFields = byteString;
        } else {
            throw new NullPointerException("unknownFields == null");
        }
    }

    public final ProtoAdapter<M> adapter() {
        return this.adapter;
    }

    public final void encode(OutputStream outputStream) throws IOException {
        this.adapter.encode(outputStream, this);
    }

    public final void encode(BufferedSink bufferedSink) throws IOException {
        this.adapter.encode(bufferedSink, this);
    }

    public final byte[] encode() {
        return this.adapter.encode(this);
    }

    public abstract Builder<M, B> newBuilder();

    public String toString() {
        return this.adapter.toString(this);
    }

    public final ByteString unknownFields() {
        ByteString byteString = this.unknownFields;
        return byteString != null ? byteString : ByteString.EMPTY;
    }

    public final M withoutUnknownFields() {
        return newBuilder().clearUnknownFields().build();
    }

    /* access modifiers changed from: protected */
    public final Object writeReplace() throws ObjectStreamException {
        return new MessageSerializedForm(encode(), getClass());
    }
}
