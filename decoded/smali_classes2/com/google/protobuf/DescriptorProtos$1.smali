.class final Lcom/google/protobuf/DescriptorProtos$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .locals 13

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$21602(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$002(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "File"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$102(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$702(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Package"

    const-string v4, "Dependency"

    const-string v5, "PublicDependency"

    const-string v6, "WeakDependency"

    const-string v7, "MessageType"

    const-string v8, "EnumType"

    const-string v9, "Service"

    const-string v10, "Extension"

    const-string v11, "Options"

    const-string v12, "SourceCodeInfo"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$802(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$2502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Field"

    const-string v4, "Extension"

    const-string v5, "NestedType"

    const-string v6, "EnumType"

    const-string v7, "ExtensionRange"

    const-string v8, "Options"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$2602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$2500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$2802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$2800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Start"

    const-string v3, "End"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$2902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$4802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$4800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Number"

    const-string v4, "Label"

    const-string v5, "Type"

    const-string v6, "TypeName"

    const-string v7, "Extendee"

    const-string v8, "DefaultValue"

    const-string v9, "Options"

    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$4902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$6302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$6300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "Value"

    const-string v4, "Options"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$6402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$7302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$7300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Number"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$7402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x6

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$8302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "Method"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v1, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$8402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$9302(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$9300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v3, "InputType"

    const-string v5, "OutputType"

    filled-new-array {v2, v3, v5, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$9402(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$10402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$10400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "JavaPackage"

    const-string v3, "JavaOuterClassname"

    const-string v4, "JavaMultipleFiles"

    const-string v5, "JavaGenerateEqualsAndHash"

    const-string v6, "OptimizeFor"

    const-string v7, "GoPackage"

    const-string v8, "CcGenericServices"

    const-string v9, "JavaGenericServices"

    const-string v10, "PyGenericServices"

    const-string v11, "UninterpretedOption"

    filled-new-array/range {v2 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$10502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x9

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$12102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$12100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "MessageSetWireFormat"

    const-string v3, "NoStandardDescriptorAccessor"

    const-string v4, "UninterpretedOption"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$12202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xa

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$13102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$13100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v5, "Ctype"

    const-string v6, "Packed"

    const-string v7, "Lazy"

    const-string v8, "Deprecated"

    const-string v9, "ExperimentalMapKey"

    const-string v10, "Weak"

    const-string v11, "UninterpretedOption"

    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$13202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$14502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$14500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "AllowAlias"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$14602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xc

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$15402(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$15400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$15502(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xd

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$16102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$16202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xe

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$16802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$16800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$16902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0xf

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$17502(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Name"

    const-string v3, "IdentifierValue"

    const-string v4, "PositiveIntValue"

    const-string v5, "NegativeIntValue"

    const-string v6, "DoubleValue"

    const-string v7, "StringValue"

    const-string v8, "AggregateValue"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$17602(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$17802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$17800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "NamePart"

    const-string v3, "IsExtension"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$17902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v1, 0x10

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$19802(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "Location"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$19902(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$20102(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/google/protobuf/DescriptorProtos;->access$20100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "Path"

    const-string v2, "Span"

    const-string v3, "LeadingComments"

    const-string v4, "TrailingComments"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/DescriptorProtos;->access$20202(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
