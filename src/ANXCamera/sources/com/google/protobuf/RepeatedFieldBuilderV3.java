package com.google.protobuf;

import com.google.protobuf.AbstractMessage;
import com.google.protobuf.AbstractMessage.Builder;
import com.google.protobuf.MessageOrBuilder;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class RepeatedFieldBuilderV3<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> implements AbstractMessage.BuilderParent {
    private List<SingleFieldBuilderV3<MType, BType, IType>> builders;
    private BuilderExternalList<MType, BType, IType> externalBuilderList;
    private MessageExternalList<MType, BType, IType> externalMessageList;
    private MessageOrBuilderExternalList<MType, BType, IType> externalMessageOrBuilderList;
    private boolean isClean;
    private boolean isMessagesListMutable;
    private List<MType> messages;
    private AbstractMessage.BuilderParent parent;

    private static class BuilderExternalList<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<BType> implements List<BType> {
        RepeatedFieldBuilderV3<MType, BType, IType> builder;

        BuilderExternalList(RepeatedFieldBuilderV3<MType, BType, IType> repeatedFieldBuilderV3) {
            this.builder = repeatedFieldBuilderV3;
        }

        public BType get(int i) {
            return this.builder.getBuilder(i);
        }

        /* access modifiers changed from: package-private */
        public void incrementModCount() {
            this.modCount++;
        }

        public int size() {
            return this.builder.getCount();
        }
    }

    private static class MessageExternalList<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<MType> implements List<MType> {
        RepeatedFieldBuilderV3<MType, BType, IType> builder;

        MessageExternalList(RepeatedFieldBuilderV3<MType, BType, IType> repeatedFieldBuilderV3) {
            this.builder = repeatedFieldBuilderV3;
        }

        public MType get(int i) {
            return this.builder.getMessage(i);
        }

        /* access modifiers changed from: package-private */
        public void incrementModCount() {
            this.modCount++;
        }

        public int size() {
            return this.builder.getCount();
        }
    }

    private static class MessageOrBuilderExternalList<MType extends AbstractMessage, BType extends AbstractMessage.Builder, IType extends MessageOrBuilder> extends AbstractList<IType> implements List<IType> {
        RepeatedFieldBuilderV3<MType, BType, IType> builder;

        MessageOrBuilderExternalList(RepeatedFieldBuilderV3<MType, BType, IType> repeatedFieldBuilderV3) {
            this.builder = repeatedFieldBuilderV3;
        }

        public IType get(int i) {
            return this.builder.getMessageOrBuilder(i);
        }

        /* access modifiers changed from: package-private */
        public void incrementModCount() {
            this.modCount++;
        }

        public int size() {
            return this.builder.getCount();
        }
    }

    public RepeatedFieldBuilderV3(List<MType> list, boolean z, AbstractMessage.BuilderParent builderParent, boolean z2) {
        this.messages = list;
        this.isMessagesListMutable = z;
        this.parent = builderParent;
        this.isClean = z2;
    }

    private void ensureBuilders() {
        if (this.builders == null) {
            this.builders = new ArrayList(this.messages.size());
            for (int i = 0; i < this.messages.size(); i++) {
                this.builders.add((Object) null);
            }
        }
    }

    private void ensureMutableMessageList() {
        if (!this.isMessagesListMutable) {
            this.messages = new ArrayList(this.messages);
            this.isMessagesListMutable = true;
        }
    }

    private MType getMessage(int i, boolean z) {
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
        if (list == null) {
            return (AbstractMessage) this.messages.get(i);
        }
        SingleFieldBuilderV3 singleFieldBuilderV3 = list.get(i);
        return singleFieldBuilderV3 == null ? (AbstractMessage) this.messages.get(i) : z ? singleFieldBuilderV3.build() : singleFieldBuilderV3.getMessage();
    }

    private void incrementModCounts() {
        MessageExternalList<MType, BType, IType> messageExternalList = this.externalMessageList;
        if (messageExternalList != null) {
            messageExternalList.incrementModCount();
        }
        BuilderExternalList<MType, BType, IType> builderExternalList = this.externalBuilderList;
        if (builderExternalList != null) {
            builderExternalList.incrementModCount();
        }
        MessageOrBuilderExternalList<MType, BType, IType> messageOrBuilderExternalList = this.externalMessageOrBuilderList;
        if (messageOrBuilderExternalList != null) {
            messageOrBuilderExternalList.incrementModCount();
        }
    }

    private void onChanged() {
        if (this.isClean) {
            AbstractMessage.BuilderParent builderParent = this.parent;
            if (builderParent != null) {
                builderParent.markDirty();
                this.isClean = false;
            }
        }
    }

    public RepeatedFieldBuilderV3<MType, BType, IType> addAllMessages(Iterable<? extends MType> iterable) {
        Iterator<? extends MType> it = iterable.iterator();
        while (it.hasNext()) {
            if (((AbstractMessage) it.next()) == null) {
                throw new NullPointerException();
            }
        }
        int i = -1;
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            if (collection.size() == 0) {
                return this;
            }
            i = collection.size();
        }
        ensureMutableMessageList();
        if (i >= 0) {
            List<MType> list = this.messages;
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + i);
            }
        }
        Iterator<? extends MType> it2 = iterable.iterator();
        while (it2.hasNext()) {
            addMessage((AbstractMessage) it2.next());
        }
        onChanged();
        incrementModCounts();
        return this;
    }

    public BType addBuilder(int i, MType mtype) {
        ensureMutableMessageList();
        ensureBuilders();
        SingleFieldBuilderV3 singleFieldBuilderV3 = new SingleFieldBuilderV3(mtype, this, this.isClean);
        this.messages.add(i, (Object) null);
        this.builders.add(i, singleFieldBuilderV3);
        onChanged();
        incrementModCounts();
        return singleFieldBuilderV3.getBuilder();
    }

    public BType addBuilder(MType mtype) {
        ensureMutableMessageList();
        ensureBuilders();
        SingleFieldBuilderV3 singleFieldBuilderV3 = new SingleFieldBuilderV3(mtype, this, this.isClean);
        this.messages.add((Object) null);
        this.builders.add(singleFieldBuilderV3);
        onChanged();
        incrementModCounts();
        return singleFieldBuilderV3.getBuilder();
    }

    public RepeatedFieldBuilderV3<MType, BType, IType> addMessage(int i, MType mtype) {
        if (mtype != null) {
            ensureMutableMessageList();
            this.messages.add(i, mtype);
            List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
            if (list != null) {
                list.add(i, (Object) null);
            }
            onChanged();
            incrementModCounts();
            return this;
        }
        throw new NullPointerException();
    }

    public RepeatedFieldBuilderV3<MType, BType, IType> addMessage(MType mtype) {
        if (mtype != null) {
            ensureMutableMessageList();
            this.messages.add(mtype);
            List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
            if (list != null) {
                list.add((Object) null);
            }
            onChanged();
            incrementModCounts();
            return this;
        }
        throw new NullPointerException();
    }

    public List<MType> build() {
        boolean z;
        this.isClean = true;
        if (!this.isMessagesListMutable && this.builders == null) {
            return this.messages;
        }
        if (!this.isMessagesListMutable) {
            int i = 0;
            while (true) {
                if (i >= this.messages.size()) {
                    z = true;
                    break;
                }
                Message message = (Message) this.messages.get(i);
                SingleFieldBuilderV3 singleFieldBuilderV3 = this.builders.get(i);
                if (singleFieldBuilderV3 != null && singleFieldBuilderV3.build() != message) {
                    z = false;
                    break;
                }
                i++;
            }
            if (z) {
                return this.messages;
            }
        }
        ensureMutableMessageList();
        for (int i2 = 0; i2 < this.messages.size(); i2++) {
            this.messages.set(i2, getMessage(i2, true));
        }
        this.messages = Collections.unmodifiableList(this.messages);
        this.isMessagesListMutable = false;
        return this.messages;
    }

    public void clear() {
        this.messages = Collections.emptyList();
        this.isMessagesListMutable = false;
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
        if (list != null) {
            for (SingleFieldBuilderV3 next : list) {
                if (next != null) {
                    next.dispose();
                }
            }
            this.builders = null;
        }
        onChanged();
        incrementModCounts();
    }

    public void dispose() {
        this.parent = null;
    }

    public BType getBuilder(int i) {
        ensureBuilders();
        SingleFieldBuilderV3 singleFieldBuilderV3 = this.builders.get(i);
        if (singleFieldBuilderV3 == null) {
            SingleFieldBuilderV3 singleFieldBuilderV32 = new SingleFieldBuilderV3((AbstractMessage) this.messages.get(i), this, this.isClean);
            this.builders.set(i, singleFieldBuilderV32);
            singleFieldBuilderV3 = singleFieldBuilderV32;
        }
        return singleFieldBuilderV3.getBuilder();
    }

    public List<BType> getBuilderList() {
        if (this.externalBuilderList == null) {
            this.externalBuilderList = new BuilderExternalList<>(this);
        }
        return this.externalBuilderList;
    }

    public int getCount() {
        return this.messages.size();
    }

    public MType getMessage(int i) {
        return getMessage(i, false);
    }

    public List<MType> getMessageList() {
        if (this.externalMessageList == null) {
            this.externalMessageList = new MessageExternalList<>(this);
        }
        return this.externalMessageList;
    }

    public IType getMessageOrBuilder(int i) {
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
        if (list == null) {
            return (MessageOrBuilder) this.messages.get(i);
        }
        SingleFieldBuilderV3 singleFieldBuilderV3 = list.get(i);
        return singleFieldBuilderV3 == null ? (MessageOrBuilder) this.messages.get(i) : singleFieldBuilderV3.getMessageOrBuilder();
    }

    public List<IType> getMessageOrBuilderList() {
        if (this.externalMessageOrBuilderList == null) {
            this.externalMessageOrBuilderList = new MessageOrBuilderExternalList<>(this);
        }
        return this.externalMessageOrBuilderList;
    }

    public boolean isEmpty() {
        return this.messages.isEmpty();
    }

    public void markDirty() {
        onChanged();
    }

    public void remove(int i) {
        ensureMutableMessageList();
        this.messages.remove(i);
        List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
        if (list != null) {
            SingleFieldBuilderV3 remove = list.remove(i);
            if (remove != null) {
                remove.dispose();
            }
        }
        onChanged();
        incrementModCounts();
    }

    public RepeatedFieldBuilderV3<MType, BType, IType> setMessage(int i, MType mtype) {
        if (mtype != null) {
            ensureMutableMessageList();
            this.messages.set(i, mtype);
            List<SingleFieldBuilderV3<MType, BType, IType>> list = this.builders;
            if (list != null) {
                SingleFieldBuilderV3 singleFieldBuilderV3 = list.set(i, (Object) null);
                if (singleFieldBuilderV3 != null) {
                    singleFieldBuilderV3.dispose();
                }
            }
            onChanged();
            incrementModCounts();
            return this;
        }
        throw new NullPointerException();
    }
}
