.class public final Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageV3$Builder;
.source "PluginProtos.java"

# interfaces
.implements Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;",
        ">;",
        "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private fileToGenerate_:Lcom/google/protobuf/LazyStringList;

.field private parameter_:Ljava/lang/Object;

.field private protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private protoFile_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>()V

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    sget-object p1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    const-string p1, ""

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/compiler/PluginProtos$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;-><init>()V

    return-void
.end method

.method private ensureFileToGenerateIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureProtoFileIsMutable()V
    .locals 3

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/google/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllFileToGenerate(Ljava/lang/Iterable;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllProtoFile(Ljava/lang/Iterable;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;)",
            "Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addFileToGenerate(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addFileToGenerateBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addProtoFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProtoFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

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

.method public addProtoFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addProtoFile(Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

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

.method public addProtoFileBuilder()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object v0
.end method

.method public addProtoFileBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->getDefaultInstance()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 2

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 4

    new-instance v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lcom/google/protobuf/compiler/PluginProtos$1;)V

    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    iget v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v0, v2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$602(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$702(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$802(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;Ljava/util/List;)Ljava/util/List;

    :goto_1
    invoke-static {v0, v3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$902(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;I)I

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public clearFileToGenerate()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/google/protobuf/Descriptors$OneofDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public clearParameter()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getParameter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearProtoFile()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->clone()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFileToGenerate(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getFileToGenerateBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getFileToGenerateCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFileToGenerateList()Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getFileToGenerateList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getParameter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    :cond_0
    return-object v1

    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameterBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/google/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    return-object p1
.end method

.method public getProtoFileBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/google/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;

    return-object p1
.end method

.method public getProtoFileBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtoFileCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getProtoFileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProtoFileOrBuilder(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;

    return-object p1
.end method

.method public getProtoFileOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/protobuf/DescriptorProtos$FileDescriptorProtoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasParameter()Z
    .locals 2

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    const-class v2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFile(I)Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

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

    check-cast p2, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;
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

    invoke-virtual {p0, v0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    instance-of v0, p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 2

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->getDefaultInstance()Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$600(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->hasParameter()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$700(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_2

    :cond_5
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    iget v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    invoke-static {}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1000()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->getProtoFileFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$800(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :cond_8
    :goto_2
    invoke-static {p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;->access$1100(Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest;)Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public removeProtoFile(I)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public setFileToGenerate(ILjava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureFileToGenerateIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->fileToGenerate_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setParameter(Ljava/lang/String;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setParameterBytes(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->parameter_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public setProtoFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto$Builder;->build()Lcom/google/protobuf/DescriptorProtos$FileDescriptorProto;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/google/protobuf/AbstractMessage;)Lcom/google/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setProtoFile(ILcom/google/protobuf/DescriptorProtos$FileDescriptorProto;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFileBuilder_:Lcom/google/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->ensureProtoFileIsMutable()V

    iget-object v0, p0, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->protoFile_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->onChanged()V

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

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/google/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/compiler/PluginProtos$CodeGeneratorRequest$Builder;

    return-object p1
.end method
