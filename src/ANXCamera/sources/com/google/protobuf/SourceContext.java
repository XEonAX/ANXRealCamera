package com.google.protobuf;

import com.google.protobuf.Descriptors;
import com.google.protobuf.GeneratedMessageV3;
import java.io.IOException;
import java.io.InputStream;

public final class SourceContext extends GeneratedMessageV3 implements SourceContextOrBuilder {
    private static final SourceContext DEFAULT_INSTANCE = new SourceContext();
    public static final int FILE_NAME_FIELD_NUMBER = 1;
    /* access modifiers changed from: private */
    public static final Parser<SourceContext> PARSER = new AbstractParser<SourceContext>() {
        public SourceContext parsePartialFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
            return new SourceContext(codedInputStream, extensionRegistryLite);
        }
    };
    private static final long serialVersionUID = 0;
    /* access modifiers changed from: private */
    public volatile Object fileName_;
    private byte memoizedIsInitialized;

    public static final class Builder extends GeneratedMessageV3.Builder<Builder> implements SourceContextOrBuilder {
        private Object fileName_;

        private Builder() {
            this.fileName_ = "";
            maybeForceBuilderInitialization();
        }

        private Builder(GeneratedMessageV3.BuilderParent builderParent) {
            super(builderParent);
            this.fileName_ = "";
            maybeForceBuilderInitialization();
        }

        public static final Descriptors.Descriptor getDescriptor() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
        }

        private void maybeForceBuilderInitialization() {
            boolean z = GeneratedMessageV3.alwaysUseFieldBuilders;
        }

        public Builder addRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.addRepeatedField(fieldDescriptor, obj);
        }

        public SourceContext build() {
            SourceContext buildPartial = buildPartial();
            if (buildPartial.isInitialized()) {
                return buildPartial;
            }
            throw newUninitializedMessageException(buildPartial);
        }

        public SourceContext buildPartial() {
            SourceContext sourceContext = new SourceContext((GeneratedMessageV3.Builder) this);
            Object unused = sourceContext.fileName_ = this.fileName_;
            onBuilt();
            return sourceContext;
        }

        public Builder clear() {
            super.clear();
            this.fileName_ = "";
            return this;
        }

        public Builder clearField(Descriptors.FieldDescriptor fieldDescriptor) {
            return (Builder) super.clearField(fieldDescriptor);
        }

        public Builder clearFileName() {
            this.fileName_ = SourceContext.getDefaultInstance().getFileName();
            onChanged();
            return this;
        }

        public Builder clearOneof(Descriptors.OneofDescriptor oneofDescriptor) {
            return (Builder) super.clearOneof(oneofDescriptor);
        }

        public Builder clone() {
            return (Builder) super.clone();
        }

        public SourceContext getDefaultInstanceForType() {
            return SourceContext.getDefaultInstance();
        }

        public Descriptors.Descriptor getDescriptorForType() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
        }

        public String getFileName() {
            Object obj = this.fileName_;
            if (obj instanceof String) {
                return (String) obj;
            }
            String stringUtf8 = ((ByteString) obj).toStringUtf8();
            this.fileName_ = stringUtf8;
            return stringUtf8;
        }

        public ByteString getFileNameBytes() {
            Object obj = this.fileName_;
            if (!(obj instanceof String)) {
                return (ByteString) obj;
            }
            ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
            this.fileName_ = copyFromUtf8;
            return copyFromUtf8;
        }

        /* access modifiers changed from: protected */
        public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
            return SourceContextProto.internal_static_google_protobuf_SourceContext_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceContext.class, Builder.class);
        }

        public final boolean isInitialized() {
            return true;
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0023  */
        public Builder mergeFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
            SourceContext sourceContext;
            SourceContext sourceContext2 = null;
            try {
                SourceContext sourceContext3 = (SourceContext) SourceContext.PARSER.parsePartialFrom(codedInputStream, extensionRegistryLite);
                if (sourceContext3 != null) {
                    mergeFrom(sourceContext3);
                }
                return this;
            } catch (InvalidProtocolBufferException e) {
                sourceContext = (SourceContext) e.getUnfinishedMessage();
                throw e.unwrapIOException();
            } catch (Throwable th) {
                th = th;
                sourceContext2 = sourceContext;
                if (sourceContext2 != null) {
                }
                throw th;
            }
        }

        public Builder mergeFrom(Message message) {
            if (message instanceof SourceContext) {
                return mergeFrom((SourceContext) message);
            }
            super.mergeFrom(message);
            return this;
        }

        public Builder mergeFrom(SourceContext sourceContext) {
            if (sourceContext == SourceContext.getDefaultInstance()) {
                return this;
            }
            if (!sourceContext.getFileName().isEmpty()) {
                this.fileName_ = sourceContext.fileName_;
                onChanged();
            }
            onChanged();
            return this;
        }

        public final Builder mergeUnknownFields(UnknownFieldSet unknownFieldSet) {
            return this;
        }

        public Builder setField(Descriptors.FieldDescriptor fieldDescriptor, Object obj) {
            return (Builder) super.setField(fieldDescriptor, obj);
        }

        public Builder setFileName(String str) {
            if (str != null) {
                this.fileName_ = str;
                onChanged();
                return this;
            }
            throw new NullPointerException();
        }

        public Builder setFileNameBytes(ByteString byteString) {
            if (byteString != null) {
                AbstractMessageLite.checkByteStringIsUtf8(byteString);
                this.fileName_ = byteString;
                onChanged();
                return this;
            }
            throw new NullPointerException();
        }

        public Builder setRepeatedField(Descriptors.FieldDescriptor fieldDescriptor, int i, Object obj) {
            return (Builder) super.setRepeatedField(fieldDescriptor, i, obj);
        }

        public final Builder setUnknownFields(UnknownFieldSet unknownFieldSet) {
            return this;
        }
    }

    private SourceContext() {
        this.memoizedIsInitialized = -1;
        this.fileName_ = "";
    }

    private SourceContext(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        this();
        boolean z = false;
        while (!z) {
            try {
                int readTag = codedInputStream.readTag();
                if (readTag != 0) {
                    if (readTag == 10) {
                        this.fileName_ = codedInputStream.readStringRequireUtf8();
                    } else if (!codedInputStream.skipField(readTag)) {
                    }
                }
                z = true;
            } catch (InvalidProtocolBufferException e) {
                throw e.setUnfinishedMessage(this);
            } catch (IOException e2) {
                throw new InvalidProtocolBufferException(e2).setUnfinishedMessage(this);
            } catch (Throwable th) {
                makeExtensionsImmutable();
                throw th;
            }
        }
        makeExtensionsImmutable();
    }

    private SourceContext(GeneratedMessageV3.Builder<?> builder) {
        super(builder);
        this.memoizedIsInitialized = -1;
    }

    public static SourceContext getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    public static final Descriptors.Descriptor getDescriptor() {
        return SourceContextProto.internal_static_google_protobuf_SourceContext_descriptor;
    }

    public static Builder newBuilder() {
        return DEFAULT_INSTANCE.toBuilder();
    }

    public static Builder newBuilder(SourceContext sourceContext) {
        return DEFAULT_INSTANCE.toBuilder().mergeFrom(sourceContext);
    }

    public static SourceContext parseDelimitedFrom(InputStream inputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream);
    }

    public static SourceContext parseDelimitedFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseDelimitedWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SourceContext parseFrom(ByteString byteString) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString);
    }

    public static SourceContext parseFrom(ByteString byteString, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(byteString, extensionRegistryLite);
    }

    public static SourceContext parseFrom(CodedInputStream codedInputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream);
    }

    public static SourceContext parseFrom(CodedInputStream codedInputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, codedInputStream, extensionRegistryLite);
    }

    public static SourceContext parseFrom(InputStream inputStream) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream);
    }

    public static SourceContext parseFrom(InputStream inputStream, ExtensionRegistryLite extensionRegistryLite) throws IOException {
        return (SourceContext) GeneratedMessageV3.parseWithIOException(PARSER, inputStream, extensionRegistryLite);
    }

    public static SourceContext parseFrom(byte[] bArr) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr);
    }

    public static SourceContext parseFrom(byte[] bArr, ExtensionRegistryLite extensionRegistryLite) throws InvalidProtocolBufferException {
        return PARSER.parseFrom(bArr, extensionRegistryLite);
    }

    public static Parser<SourceContext> parser() {
        return PARSER;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return !(obj instanceof SourceContext) ? super.equals(obj) : getFileName().equals(((SourceContext) obj).getFileName());
    }

    public SourceContext getDefaultInstanceForType() {
        return DEFAULT_INSTANCE;
    }

    public String getFileName() {
        Object obj = this.fileName_;
        if (obj instanceof String) {
            return (String) obj;
        }
        String stringUtf8 = ((ByteString) obj).toStringUtf8();
        this.fileName_ = stringUtf8;
        return stringUtf8;
    }

    public ByteString getFileNameBytes() {
        Object obj = this.fileName_;
        if (!(obj instanceof String)) {
            return (ByteString) obj;
        }
        ByteString copyFromUtf8 = ByteString.copyFromUtf8((String) obj);
        this.fileName_ = copyFromUtf8;
        return copyFromUtf8;
    }

    public Parser<SourceContext> getParserForType() {
        return PARSER;
    }

    public int getSerializedSize() {
        int i = this.memoizedSize;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        if (!getFileNameBytes().isEmpty()) {
            i2 = 0 + GeneratedMessageV3.computeStringSize(1, this.fileName_);
        }
        this.memoizedSize = i2;
        return i2;
    }

    public final UnknownFieldSet getUnknownFields() {
        return UnknownFieldSet.getDefaultInstance();
    }

    public int hashCode() {
        if (this.memoizedHashCode != 0) {
            return this.memoizedHashCode;
        }
        int hashCode = ((((((779 + getDescriptorForType().hashCode()) * 37) + 1) * 53) + getFileName().hashCode()) * 29) + this.unknownFields.hashCode();
        this.memoizedHashCode = hashCode;
        return hashCode;
    }

    /* access modifiers changed from: protected */
    public GeneratedMessageV3.FieldAccessorTable internalGetFieldAccessorTable() {
        return SourceContextProto.internal_static_google_protobuf_SourceContext_fieldAccessorTable.ensureFieldAccessorsInitialized(SourceContext.class, Builder.class);
    }

    public final boolean isInitialized() {
        byte b2 = this.memoizedIsInitialized;
        if (b2 == 1) {
            return true;
        }
        if (b2 == 0) {
            return false;
        }
        this.memoizedIsInitialized = 1;
        return true;
    }

    public Builder newBuilderForType() {
        return newBuilder();
    }

    /* access modifiers changed from: protected */
    public Builder newBuilderForType(GeneratedMessageV3.BuilderParent builderParent) {
        return new Builder(builderParent);
    }

    public Builder toBuilder() {
        return this == DEFAULT_INSTANCE ? new Builder() : new Builder().mergeFrom(this);
    }

    public void writeTo(CodedOutputStream codedOutputStream) throws IOException {
        if (!getFileNameBytes().isEmpty()) {
            GeneratedMessageV3.writeString(codedOutputStream, 1, this.fileName_);
        }
    }
}
