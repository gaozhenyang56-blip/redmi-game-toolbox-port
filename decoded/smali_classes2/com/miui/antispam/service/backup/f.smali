.class public final Lcom/miui/antispam/service/backup/f;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/service/backup/f$b;
    }
.end annotation


# static fields
.field private static final i:Lcom/miui/antispam/service/backup/f;

.field public static j:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:I

.field private f:I

.field private g:B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/f$a;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/f$a;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/f;->j:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/f;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/f;->i:Lcom/miui/antispam/service/backup/f;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/f;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 4

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p2, -0x1

    iput-byte p2, p0, Lcom/miui/antispam/service/backup/f;->g:B

    iput p2, p0, Lcom/miui/antispam/service/backup/f;->h:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/f;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object p2

    invoke-static {p2}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0xa

    if-eq v1, v3, :cond_4

    const/16 v2, 0x12

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1a

    if-eq v1, v2, :cond_2

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->f:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/miui/antispam/service/backup/f;->e:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/miui/antispam/service/backup/f;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/miui/antispam/service/backup/f;->a:I

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v2, p0, Lcom/miui/antispam/service/backup/f;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/miui/antispam/service/backup/f;->a:I

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iget v3, p0, Lcom/miui/antispam/service/backup/f;->a:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/miui/antispam/service/backup/f;->a:I

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

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
    invoke-virtual {p2}, Lcom/google/protobuf/CodedOutputStream;->flush()V
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

    :cond_6
    :try_start_3
    invoke-virtual {p2}, Lcom/google/protobuf/CodedOutputStream;->flush()V
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

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/f;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/f;->g:B

    iput p1, p0, Lcom/miui/antispam/service/backup/f;->h:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/f;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/f;->g:B

    iput p1, p0, Lcom/miui/antispam/service/backup/f;->h:I

    return-void
.end method

.method static synthetic a(Lcom/miui/antispam/service/backup/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antispam/service/backup/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/antispam/service/backup/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/antispam/service/backup/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/antispam/service/backup/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/antispam/service/backup/f;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic g(Lcom/miui/antispam/service/backup/f;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/f;->e:I

    return p1
.end method

.method static synthetic h(Lcom/miui/antispam/service/backup/f;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/f;->f:I

    return p1
.end method

.method static synthetic i(Lcom/miui/antispam/service/backup/f;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    return p1
.end method

.method private initFields()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->e:I

    iput v0, p0, Lcom/miui/antispam/service/backup/f;->f:I

    return-void
.end method

.method public static j()Lcom/miui/antispam/service/backup/f;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/f;->i:Lcom/miui/antispam/service/backup/f;

    return-object v0
.end method

.method public static x()Lcom/miui/antispam/service/backup/f$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/f$b;->a()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    return-object v0
.end method

.method public static y(Lcom/miui/antispam/service/backup/f;)Lcom/miui/antispam/service/backup/f$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->x()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/f$b;->h(Lcom/miui/antispam/service/backup/f;)Lcom/miui/antispam/service/backup/f$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lcom/miui/antispam/service/backup/f$b;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/f;->y(Lcom/miui/antispam/service/backup/f;)Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->k()Lcom/miui/antispam/service/backup/f;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/f;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/antispam/service/backup/f;->j:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->l()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->o()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->n()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->e:I

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lcom/miui/antispam/service/backup/f;->f:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iput v0, p0, Lcom/miui/antispam/service/backup/f;->h:I

    return v0
.end method

.method public hasType()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/f;->g:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/f;->g:B

    return v1
.end method

.method public k()Lcom/miui/antispam/service/backup/f;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/f;->i:Lcom/miui/antispam/service/backup/f;

    return-object v0
.end method

.method public l()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->b:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public n()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->z()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/f;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->e:I

    return v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->f:I

    return v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->A()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

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

.method public w()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->getSerializedSize()I

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->l()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->o()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/f;->n()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/miui/antispam/service/backup/f;->e:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/miui/antispam/service/backup/f;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/miui/antispam/service/backup/f;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_4
    return-void
.end method

.method public z()Lcom/miui/antispam/service/backup/f$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/f;->x()Lcom/miui/antispam/service/backup/f$b;

    move-result-object v0

    return-object v0
.end method
