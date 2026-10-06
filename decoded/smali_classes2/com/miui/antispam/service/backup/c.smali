.class public final Lcom/miui/antispam/service/backup/c;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antispam/service/backup/c$b;
    }
.end annotation


# static fields
.field private static final m:Lcom/miui/antispam/service/backup/c;

.field public static n:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/l;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/h;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/k;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/g;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/miui/antispam/service/backup/d;

.field private i:Lcom/miui/antispam/service/backup/j;

.field private j:Lcom/miui/antispam/service/backup/i;

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antispam/service/backup/c$a;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/c$a;-><init>()V

    sput-object v0, Lcom/miui/antispam/service/backup/c;->n:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/miui/antispam/service/backup/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/antispam/service/backup/c;-><init>(Z)V

    sput-object v0, Lcom/miui/antispam/service/backup/c;->m:Lcom/miui/antispam/service/backup/c;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/c;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 12

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/miui/antispam/service/backup/c;->k:B

    iput v0, p0, Lcom/miui/antispam/service/backup/c;->l:I

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c;->initFields()V

    invoke-static {}, Lcom/google/protobuf/ByteString;->newOutput()Lcom/google/protobuf/ByteString$Output;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/google/protobuf/CodedOutputStream;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x4

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-nez v1, :cond_1c

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v9

    if-eqz v9, :cond_15

    const/16 v10, 0xa

    if-eq v9, v10, :cond_13

    const/16 v10, 0x12

    if-eq v9, v10, :cond_11

    const/16 v10, 0x1a

    if-eq v9, v10, :cond_f

    const/16 v10, 0x22

    if-eq v9, v10, :cond_d

    const/16 v10, 0x2a

    if-eq v9, v10, :cond_b

    const/16 v10, 0x32

    if-eq v9, v10, :cond_9

    const/16 v10, 0x3a

    const/4 v11, 0x0

    if-eq v9, v10, :cond_6

    const/16 v10, 0x42

    if-eq v9, v10, :cond_3

    const/16 v10, 0x4a

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v9, v6

    if-ne v9, v6, :cond_1

    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    invoke-virtual {v9}, Lcom/miui/antispam/service/backup/i;->z()Lcom/miui/antispam/service/backup/i$b;

    move-result-object v11

    :cond_1
    sget-object v9, Lcom/miui/antispam/service/backup/i;->j:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/miui/antispam/service/backup/i;

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    if-eqz v11, :cond_2

    invoke-virtual {v11, v9}, Lcom/miui/antispam/service/backup/i$b;->h(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/i$b;

    invoke-virtual {v11}, Lcom/miui/antispam/service/backup/i$b;->c()Lcom/miui/antispam/service/backup/i;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    :cond_2
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    or-int/2addr v9, v6

    iput v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    goto :goto_0

    :cond_3
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v9, v7

    if-ne v9, v7, :cond_4

    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    invoke-virtual {v9}, Lcom/miui/antispam/service/backup/j;->s()Lcom/miui/antispam/service/backup/j$b;

    move-result-object v11

    :cond_4
    sget-object v9, Lcom/miui/antispam/service/backup/j;->h:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/miui/antispam/service/backup/j;

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    if-eqz v11, :cond_5

    invoke-virtual {v11, v9}, Lcom/miui/antispam/service/backup/j$b;->h(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/j$b;

    invoke-virtual {v11}, Lcom/miui/antispam/service/backup/j$b;->c()Lcom/miui/antispam/service/backup/j;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    :cond_5
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    or-int/2addr v9, v7

    iput v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    goto/16 :goto_0

    :cond_6
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v9, v8

    if-ne v9, v8, :cond_7

    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    invoke-virtual {v9}, Lcom/miui/antispam/service/backup/d;->s()Lcom/miui/antispam/service/backup/d$b;

    move-result-object v11

    :cond_7
    sget-object v9, Lcom/miui/antispam/service/backup/d;->h:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v9, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v9

    check-cast v9, Lcom/miui/antispam/service/backup/d;

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    if-eqz v11, :cond_8

    invoke-virtual {v11, v9}, Lcom/miui/antispam/service/backup/d$b;->h(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/d$b;

    invoke-virtual {v11}, Lcom/miui/antispam/service/backup/d$b;->c()Lcom/miui/antispam/service/backup/d;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    :cond_8
    iget v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    or-int/2addr v9, v8

    iput v9, p0, Lcom/miui/antispam/service/backup/c;->a:I

    goto/16 :goto_0

    :cond_9
    and-int/lit8 v9, v2, 0x20

    if-eq v9, v3, :cond_a

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    or-int/lit8 v2, v2, 0x20

    :cond_a
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/g;->i:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/g;

    :goto_1
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    and-int/lit8 v9, v2, 0x10

    if-eq v9, v4, :cond_c

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    or-int/lit8 v2, v2, 0x10

    :cond_c
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/k;->i:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/k;

    goto :goto_1

    :cond_d
    and-int/lit8 v9, v2, 0x8

    if-eq v9, v5, :cond_e

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    or-int/lit8 v2, v2, 0x8

    :cond_e
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/h;->j:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/h;

    goto :goto_1

    :cond_f
    and-int/lit8 v9, v2, 0x4

    if-eq v9, v6, :cond_10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    :cond_10
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/f;->j:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/f;

    goto :goto_1

    :cond_11
    and-int/lit8 v9, v2, 0x2

    if-eq v9, v7, :cond_12

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    :cond_12
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/l;->l:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/l;

    goto :goto_1

    :cond_13
    and-int/lit8 v9, v2, 0x1

    if-eq v9, v8, :cond_14

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_14
    iget-object v9, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    sget-object v10, Lcom/miui/antispam/service/backup/e;->k:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v10, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v10

    check-cast v10, Lcom/miui/antispam/service/backup/e;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_15
    move v1, v8

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

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

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v8, :cond_16

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    :cond_16
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v7, :cond_17

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    :cond_17
    and-int/lit8 p2, v2, 0x4

    if-ne p2, v6, :cond_18

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    :cond_18
    and-int/lit8 p2, v2, 0x8

    if-ne p2, v5, :cond_19

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    :cond_19
    and-int/lit8 p2, v2, 0x10

    if-ne p2, v4, :cond_1a

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    :cond_1a
    and-int/lit8 p2, v2, 0x20

    if-ne p2, v3, :cond_1b

    iget-object p2, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    :cond_1b
    :try_start_2
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    throw p1

    :catch_2
    :goto_3
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeExtensionsImmutable()V

    throw p1

    :cond_1c
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v8, :cond_1d

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    :cond_1d
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v7, :cond_1e

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    :cond_1e
    and-int/lit8 p1, v2, 0x4

    if-ne p1, v6, :cond_1f

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    :cond_1f
    and-int/lit8 p1, v2, 0x8

    if-ne p1, v5, :cond_20

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    :cond_20
    and-int/lit8 p1, v2, 0x10

    if-ne p1, v4, :cond_21

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    :cond_21
    and-int/lit8 p1, v2, 0x20

    if-ne p1, v3, :cond_22

    iget-object p1, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    :cond_22
    :try_start_3
    invoke-virtual {v0}, Lcom/google/protobuf/CodedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p1

    throw p1

    :catch_3
    :goto_4
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/miui/antispam/service/backup/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antispam/service/backup/c;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/c;->k:B

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->l:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/service/backup/c;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/miui/antispam/service/backup/c;->k:B

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->l:I

    return-void
.end method

.method public static G()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c$b;->a()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public static H(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->G()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic f(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic g(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic h(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic i(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    return-object p0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-static {}, Lcom/miui/antispam/service/backup/d;->g()Lcom/miui/antispam/service/backup/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {}, Lcom/miui/antispam/service/backup/j;->g()Lcom/miui/antispam/service/backup/j;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {}, Lcom/miui/antispam/service/backup/i;->j()Lcom/miui/antispam/service/backup/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    return-void
.end method

.method static synthetic j(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic k(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic m(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/d;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    return-object p1
.end method

.method static synthetic n(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/j;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    return-object p1
.end method

.method static synthetic o(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/i;
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    return-object p1
.end method

.method static synthetic q(Lcom/miui/antispam/service/backup/c;I)I
    .locals 0

    iput p1, p0, Lcom/miui/antispam/service/backup/c;->a:I

    return p1
.end method

.method public static u()Lcom/miui/antispam/service/backup/c;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/c;->m:Lcom/miui/antispam/service/backup/c;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/miui/antispam/service/backup/j;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/l;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public E()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

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

.method public F()Z
    .locals 2

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

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

.method public I()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->G()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-static {p0}, Lcom/miui/antispam/service/backup/c;->H(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->v()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/miui/antispam/service/backup/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/miui/antispam/service/backup/c;->n:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 8

    iget v0, p0, Lcom/miui/antispam/service/backup/c;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_2
    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    const/4 v3, 0x3

    iget-object v6, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_3
    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x4

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v6, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_4
    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    const/4 v3, 0x5

    iget-object v7, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v7}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_7
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_8

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_8
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_9

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    :cond_9
    iput v2, p0, Lcom/miui/antispam/service/backup/c;->l:I

    return v2
.end method

.method public final isInitialized()Z
    .locals 2

    iget-byte v0, p0, Lcom/miui/antispam/service/backup/c;->k:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iput-byte v1, p0, Lcom/miui/antispam/service/backup/c;->k:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->I()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/miui/antispam/service/backup/d;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    return-object v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/e;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->J()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/miui/antispam/service/backup/c;
    .locals 1

    sget-object v0, Lcom/miui/antispam/service/backup/c;->m:Lcom/miui/antispam/service/backup/c;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 7

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/miui/antispam/service/backup/c;->d:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v5}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x4

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v5, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    iget-object v6, p0, Lcom/miui/antispam/service/backup/c;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v6}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->h:Lcom/miui/antispam/service/backup/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_6
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_7

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->i:Lcom/miui/antispam/service/backup/j;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_7
    iget v0, p0, Lcom/miui/antispam/service/backup/c;->a:I

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_8

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_8
    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/antispam/service/backup/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->e:Ljava/util/List;

    return-object v0
.end method

.method public z()Lcom/miui/antispam/service/backup/i;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c;->j:Lcom/miui/antispam/service/backup/i;

    return-object v0
.end method
