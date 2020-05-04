package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Builder;
import com.google.protobuf.MessageOrBuilder;

public class SingleFieldBuilderV3<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {
    private BType builder;
    private boolean isClean;
    private MType message;
    private AbstractMessage.BuilderParent parent;

    public SingleFieldBuilderV3(MType mtype, AbstractMessage.BuilderParent builderParent, boolean z) {
        if (mtype != null) {
            this.message = mtype;
            this.parent = builderParent;
            this.isClean = z;
            return;
        }
        throw new NullPointerException();
    }

    private void onChanged() {
        if (this.builder != null) {
            this.message = null;
        }
        if (this.isClean) {
            AbstractMessage.BuilderParent builderParent = this.parent;
            if (builderParent != null) {
                builderParent.markDirty();
                this.isClean = false;
            }
        }
    }

    public MType build() {
        this.isClean = true;
        return getMessage();
    }

    public SingleFieldBuilderV3<MType, BType, IType> clear() {
        MType mtype = this.message;
        this.message = (AbstractMessage) (mtype != null ? mtype.getDefaultInstanceForType() : this.builder.getDefaultInstanceForType());
        BType btype = this.builder;
        if (btype != null) {
            btype.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }

    public void dispose() {
        this.parent = null;
    }

    public BType getBuilder() {
        if (this.builder == null) {
            this.builder = (AbstractMessage.Builder) this.message.newBuilderForType(this);
            this.builder.mergeFrom((Message) this.message);
            this.builder.markClean();
        }
        return this.builder;
    }

    public MType getMessage() {
        if (this.message == null) {
            this.message = (AbstractMessage) this.builder.buildPartial();
        }
        return this.message;
    }

    public IType getMessageOrBuilder() {
        Object obj = this.builder;
        return obj != null ? obj : this.message;
    }

    public void markDirty() {
        onChanged();
    }

    public SingleFieldBuilderV3<MType, BType, IType> mergeFrom(MType mtype) {
        if (this.builder == null) {
            MType mtype2 = this.message;
            if (mtype2 == mtype2.getDefaultInstanceForType()) {
                this.message = mtype;
                onChanged();
                return this;
            }
        }
        getBuilder().mergeFrom((Message) mtype);
        onChanged();
        return this;
    }

    public SingleFieldBuilderV3<MType, BType, IType> setMessage(MType mtype) {
        if (mtype != null) {
            this.message = mtype;
            BType btype = this.builder;
            if (btype != null) {
                btype.dispose();
                this.builder = null;
            }
            onChanged();
            return this;
        }
        throw new NullPointerException();
    }
}
