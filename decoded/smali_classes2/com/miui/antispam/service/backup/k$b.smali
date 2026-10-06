.class public final Lcom/miui/antispam/service/backup/k$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/service/backup/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/miui/antispam/service/backup/k;",
        "Lcom/miui/antispam/service/backup/k$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/Object;

.field private d:Z

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/antispam/service/backup/k$b;->d:Z

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->e:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/k$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic a()Lcom/miui/antispam/service/backup/k$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/k$b;->e()Lcom/miui/antispam/service/backup/k$b;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/miui/antispam/service/backup/k$b;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/k$b;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/k$b;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()Lcom/miui/antispam/service/backup/k;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->c()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/k;->isInitialized()Z

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

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->b()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->c()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/miui/antispam/service/backup/k;
    .locals 5

    new-instance v0, Lcom/miui/antispam/service/backup/k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/service/backup/k;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/b;)V

    iget v1, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/k$b;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/k;->b(Lcom/miui/antispam/service/backup/k;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    :cond_1
    iget-object v2, p0, Lcom/miui/antispam/service/backup/k$b;->c:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/k;->d(Lcom/miui/antispam/service/backup/k;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    :cond_2
    iget-boolean v2, p0, Lcom/miui/antispam/service/backup/k$b;->d:Z

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/k;->e(Lcom/miui/antispam/service/backup/k;Z)Z

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    :cond_3
    iget v1, p0, Lcom/miui/antispam/service/backup/k$b;->e:I

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/k;->f(Lcom/miui/antispam/service/backup/k;I)I

    invoke-static {v0, v3}, Lcom/miui/antispam/service/backup/k;->g(Lcom/miui/antispam/service/backup/k;I)I

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->d()Lcom/miui/antispam/service/backup/k$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->d()Lcom/miui/antispam/service/backup/k$b;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/miui/antispam/service/backup/k$b;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->b:Ljava/lang/Object;

    iget v1, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    and-int/lit8 v1, v1, -0x2

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->c:Ljava/lang/Object;

    and-int/lit8 v0, v1, -0x3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/antispam/service/backup/k$b;->d:Z

    and-int/lit8 v0, v0, -0x5

    iput v1, p0, Lcom/miui/antispam/service/backup/k$b;->e:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    return-object p0
.end method

.method public f()Lcom/miui/antispam/service/backup/k;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/k;->h()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/k$b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/antispam/service/backup/k;->i:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/service/backup/k;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/k$b;->h(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/k$b;

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

    check-cast p2, Lcom/miui/antispam/service/backup/k;
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

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/k$b;->h(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/k$b;

    :cond_1
    throw p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->f()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/k$b;->f()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/k$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/k;->h()Lcom/miui/antispam/service/backup/k;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/k;->a(Lcom/miui/antispam/service/backup/k;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->b:Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    invoke-static {p1}, Lcom/miui/antispam/service/backup/k;->c(Lcom/miui/antispam/service/backup/k;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/k$b;->c:Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->m()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/k$b;->j(Z)Lcom/miui/antispam/service/backup/k$b;

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/k;->l()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/k$b;->i(I)Lcom/miui/antispam/service/backup/k$b;

    :cond_4
    return-object p0
.end method

.method public i(I)Lcom/miui/antispam/service/backup/k$b;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    iput p1, p0, Lcom/miui/antispam/service/backup/k$b;->e:I

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j(Z)Lcom/miui/antispam/service/backup/k$b;
    .locals 1

    iget v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/antispam/service/backup/k$b;->a:I

    iput-boolean p1, p0, Lcom/miui/antispam/service/backup/k$b;->d:Z

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/k$b;->g(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/k$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/miui/antispam/service/backup/k;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/k$b;->h(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/k$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/k$b;->g(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/k$b;

    move-result-object p1

    return-object p1
.end method
