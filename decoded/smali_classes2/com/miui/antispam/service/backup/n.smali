.class public final Lcom/miui/antispam/service/backup/n;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/service/backup/n$b;
    }
.end annotation


# static fields
.field private static final e:Lcom/miui/antispam/service/backup/n;

.field public static f:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/n;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Lcom/miui/antispam/service/backup/c;

.field private c:B

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/n$a;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/n$a;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/n;->f:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/n;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/n;->e:Lcom/miui/antispam/service/backup/n;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/n;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/n;->c:B

    iput v0, p0, Lcom/miui/antispam/service/backup/n;->d:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/n;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x42

    if-eq v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iget v4, p0, Lcom/miui/antispam/service/backup/n;->a:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/c;->J()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v2

    :cond_1
    sget-object v4, Lcom/miui/antispam/service/backup/c;->n:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lcom/miui/antispam/service/backup/c;

    iput-object v4, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/c$b;->i()Lcom/miui/antispam/service/backup/c;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    :cond_2
    iget v2, p0, Lcom/miui/antispam/service/backup/n;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/antispam/service/backup/n;->a:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    throw p1

    :catch_2
    :goto_2
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeExtensionsImmutable()V

    throw p1

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    throw p1

    :catch_3
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/n;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/n;->c:B

    iput p1, p0, Lcom/miui/antispam/service/backup/n;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/n;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/n;->c:B

    iput p1, p0, Lcom/miui/antispam/service/backup/n;->d:I

    return-void
.end method

.method static synthetic a(Lcom/miui/antispam/service/backup/n;Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    return-object p1
.end method

.method static synthetic b(Lcom/miui/antispam/service/backup/n;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/n;->a:I

    return p1
.end method

.method public static d()Lcom/miui/antispam/service/backup/n;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/n;->e:Lcom/miui/antispam/service/backup/n;

    return-object v0
.end method

.method public static g()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n$b;->a()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public static h(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n;->g()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/n$b;->j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object p0

    return-object p0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    return-void
.end method

.method public static j(Ljava/io/InputStream;)Lcom/miui/antispam/service/backup/n;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/n;->f:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/antispam/service/backup/n;

    return-object p0
.end method


# virtual methods
.method public c()Lcom/miui/antispam/service/backup/c;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    return-object v0
.end method

.method public e()Lcom/miui/antispam/service/backup/n;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/n;->e:Lcom/miui/antispam/service/backup/n;

    return-object v0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/n;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n;->e()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/n;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/antispam/service/backup/n;->f:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/n;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/antispam/service/backup/n;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iput v0, p0, Lcom/miui/antispam/service/backup/n;->d:I

    return v0
.end method

.method public i()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n;->g()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/n;->c:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/n;->c:B

    return v1
.end method

.method public k()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/n;->h(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n;->i()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n;->k()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n;->getSerializedSize()I

    iget v0, p0, Lcom/miui/antispam/service/backup/n;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/miui/antispam/service/backup/n;->b:Lcom/miui/antispam/service/backup/c;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_0
    return-void
.end method
