.class public final Lcom/miui/antispam/service/backup/n$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/service/backup/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/miui/antispam/service/backup/n;",
        "Lcom/miui/antispam/service/backup/n$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/miui/antispam/service/backup/c;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/n$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic a()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n$b;->f()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method private static f()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/n$b;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/n$b;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()Lcom/miui/antispam/service/backup/n;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->c()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/n;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->b()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->c()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/miui/antispam/service/backup/n;
    .locals 3

    new-instance v0, Lcom/miui/antispam/service/backup/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/service/backup/n;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/m;)V

    iget v1, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/n;->a(Lcom/miui/antispam/service/backup/n;Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/n;->b(Lcom/miui/antispam/service/backup/n;I)I

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->d()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->d()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->e()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->e()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->e()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->e()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    iget v0, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    return-object p0
.end method

.method public e()Lcom/miui/antispam/service/backup/n$b;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/n$b;->f()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->c()Lcom/miui/antispam/service/backup/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/antispam/service/backup/n$b;->j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/miui/antispam/service/backup/n;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n;->d()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->g()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/n$b;->g()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/n$b;
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    invoke-static {v0}, Lcom/miui/antispam/service/backup/c;->H(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c$b;->i()Lcom/miui/antispam/service/backup/c;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    iget p1, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    return-object p0
.end method

.method public i(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/n$b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/antispam/service/backup/n;->f:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/service/backup/n;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/n$b;->j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

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

    check-cast p2, Lcom/miui/antispam/service/backup/n;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/n$b;->j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

    :cond_1
    throw p1
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/n;->d()Lcom/miui/antispam/service/backup/n;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/n;->c()Lcom/miui/antispam/service/backup/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/n$b;->h(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/n$b;

    :cond_1
    return-object p0
.end method

.method public k(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/n$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/miui/antispam/service/backup/n$b;->b:Lcom/miui/antispam/service/backup/c;

    iget p1, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/miui/antispam/service/backup/n$b;->a:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/n$b;->i(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/miui/antispam/service/backup/n;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/n$b;->j(Lcom/miui/antispam/service/backup/n;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/n$b;->i(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/n$b;

    move-result-object p1

    return-object p1
.end method
