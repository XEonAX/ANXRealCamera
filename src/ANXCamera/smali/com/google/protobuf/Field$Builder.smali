.class public final Lcom/google/protobuf/Field$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "Field.java"

# interfaces
.implements Lcom/google/protobuf/FieldOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/Field$Builder;",
        ">;",
        "Lcom/google/protobuf/FieldOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private cardinality_:I

.field private defaultValue_:Ljava/lang/Object;

.field private jsonName_:Ljava/lang/Object;

.field private kind_:I

.field private name_:Ljava/lang/Object;

.field private number_:I

.field private oneofIndex_:I

.field private optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$Builder;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private options_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private packed_:Z

.field private typeUrl_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Field$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/Field$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/Field$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureOptionsIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/Option;",
            "Lcom/google/protobuf/Option$Builder;",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllOptions(Ljava/lang/Iterable;)Lcom/google/protobuf/Field$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/Option;",
            ">;)",
            "Lcom/google/protobuf/Field$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptions(Lcom/google/protobuf/Option;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addOptionsBuilder()Lcom/google/protobuf/Option$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/Option;->getDefaultInstance()Lcom/google/protobuf/Option;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Option$Builder;

    return-object v0
.end method

.method public addOptionsBuilder(I)Lcom/google/protobuf/Option$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/Option;->getDefaultInstance()Lcom/google/protobuf/Option;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option$Builder;

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/google/protobuf/Field;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->buildPartial()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/Field$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->build()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/Field;
    .locals 3

    new-instance v0, Lcom/google/protobuf/Field;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/Field;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/Field$1;)V

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$302(Lcom/google/protobuf/Field;I)I

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$402(Lcom/google/protobuf/Field;I)I

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->number_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$502(Lcom/google/protobuf/Field;I)I

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$602(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$702(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->oneofIndex_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$802(Lcom/google/protobuf/Field;I)I

    iget-boolean v1, p0, Lcom/google/protobuf/Field$Builder;->packed_:Z

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$902(Lcom/google/protobuf/Field;Z)Z

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_1

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1002(Lcom/google/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1102(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1202(Lcom/google/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/Field;->access$1302(Lcom/google/protobuf/Field;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->buildPartial()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->buildPartial()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clear()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/Field$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->number_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->oneofIndex_:I

    iput-boolean v0, p0, Lcom/google/protobuf/Field$Builder;->packed_:Z

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clear()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clear()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clear()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearCardinality()Lcom/google/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearDefaultValue()Lcom/google/protobuf/Field$Builder;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearJsonName()Lcom/google/protobuf/Field$Builder;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearKind()Lcom/google/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearName()Lcom/google/protobuf/Field$Builder;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNumber()Lcom/google/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->number_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneofIndex()Lcom/google/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->oneofIndex_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOptions()Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearPacked()Lcom/google/protobuf/Field$Builder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/Field$Builder;->packed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTypeUrl()Lcom/google/protobuf/Field$Builder;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/Field$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Field$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->clone()Lcom/google/protobuf/Field$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCardinality()Lcom/google/protobuf/Field$Cardinality;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Cardinality;->valueOf(I)Lcom/google/protobuf/Field$Cardinality;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Field$Cardinality;->UNRECOGNIZED:Lcom/google/protobuf/Field$Cardinality;

    :cond_0
    return-object v0
.end method

.method public getCardinalityValue()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/Field;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultValueBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getJsonName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getJsonNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getKind()Lcom/google/protobuf/Field$Kind;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    invoke-static {v0}, Lcom/google/protobuf/Field$Kind;->valueOf(I)Lcom/google/protobuf/Field$Kind;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Field$Kind;->UNRECOGNIZED:Lcom/google/protobuf/Field$Kind;

    :cond_0
    return-object v0
.end method

.method public getKindValue()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->number_:I

    return v0
.end method

.method public getOneofIndex()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->oneofIndex_:I

    return v0
.end method

.method public getOptions(I)Lcom/google/protobuf/Option;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option;

    return-object p1
.end method

.method public getOptionsBuilder(I)Lcom/google/protobuf/Option$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Option$Builder;

    return-object p1
.end method

.method public getOptionsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getOptionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/Option;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsOrBuilder(I)Lcom/google/protobuf/OptionOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/OptionOrBuilder;

    return-object p1
.end method

.method public getOptionsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/OptionOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPacked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/Field$Builder;->packed_:Z

    return v0
.end method

.method public getTypeUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    sget-object v0, Lcom/google/protobuf/TypeProto;->internal_static_google_protobuf_Field_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/google/protobuf/Field;

    const-class v2, Lcom/google/protobuf/Field$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/google/protobuf/Field;->access$1400()Lcom/google/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/protobuf/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/Field;->getDefaultInstance()Lcom/google/protobuf/Field;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$300(Lcom/google/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getKindValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->setKindValue(I)Lcom/google/protobuf/Field$Builder;

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$400(Lcom/google/protobuf/Field;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getCardinalityValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->setCardinalityValue(I)Lcom/google/protobuf/Field$Builder;

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->setNumber(I)Lcom/google/protobuf/Field$Builder;

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$600(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$700(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getOneofIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->setOneofIndex(I)Lcom/google/protobuf/Field$Builder;

    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getPacked()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Field$Builder;->setPacked(Z)Lcom/google/protobuf/Field$Builder;

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_9

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    goto :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_1

    :cond_9
    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/protobuf/Field$Builder;->bitField0_:I

    sget-boolean v1, Lcom/google/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->getOptionsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_a
    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1000(Lcom/google/protobuf/Field;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getJsonName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1100(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lcom/google/protobuf/Field;->getDefaultValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lcom/google/protobuf/Field;->access$1200(Lcom/google/protobuf/Field;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    :cond_e
    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    instance-of v0, p1, Lcom/google/protobuf/Field;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/Field;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Field;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public removeOptions(I)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setCardinality(Lcom/google/protobuf/Field$Cardinality;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Field$Cardinality;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setCardinalityValue(I)Lcom/google/protobuf/Field$Builder;
    .locals 0

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->cardinality_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public setDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setDefaultValueBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->defaultValue_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/Field$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setJsonName(Ljava/lang/String;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setJsonNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->jsonName_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setKind(Lcom/google/protobuf/Field$Kind;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/Field$Kind;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setKindValue(I)Lcom/google/protobuf/Field$Builder;
    .locals 0

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->kind_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->name_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setNumber(I)Lcom/google/protobuf/Field$Builder;
    .locals 0

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->number_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public setOneofIndex(I)Lcom/google/protobuf/Field$Builder;
    .locals 0

    iput p1, p0, Lcom/google/protobuf/Field$Builder;->oneofIndex_:I

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option$Builder;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/Option$Builder;->build()Lcom/google/protobuf/Option;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setOptions(ILcom/google/protobuf/Option;)Lcom/google/protobuf/Field$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->optionsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/Field$Builder;->ensureOptionsIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/Field$Builder;->options_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setPacked(Z)Lcom/google/protobuf/Field$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/Field$Builder;->packed_:Z

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Field$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Field$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/Field$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTypeUrl(Ljava/lang/String;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setTypeUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    iput-object p1, p0, Lcom/google/protobuf/Field$Builder;->typeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/Field$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Field$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Field$Builder;

    move-result-object p1

    return-object p1
.end method
