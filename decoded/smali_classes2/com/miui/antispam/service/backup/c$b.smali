.class public final Lcom/miui/antispam/service/backup/c$b;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/service/backup/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/miui/antispam/service/backup/c;",
        "Lcom/miui/antispam/service/backup/c$b;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


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


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-static {}, Lcom/miui/antispam/service/backup/d;->g()Lcom/miui/antispam/service/backup/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {}, Lcom/miui/antispam/service/backup/j;->g()Lcom/miui/antispam/service/backup/j;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {}, Lcom/miui/antispam/service/backup/i;->j()Lcom/miui/antispam/service/backup/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic a()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c$b;->k()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method private static k()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    new-instance v0, Lcom/miui/antispam/service/backup/c$b;

    invoke-direct {v0}, Lcom/miui/antispam/service/backup/c$b;-><init>()V

    return-object v0
.end method

.method private l()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method

.method private n()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method

.method private o()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method

.method private q()V
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Lcom/miui/antispam/service/backup/e;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->l()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->h()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->i()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/miui/antispam/service/backup/f;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->m()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->j()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->j()Lcom/miui/antispam/service/backup/c$b;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/miui/antispam/service/backup/g;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->n()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public e(Lcom/miui/antispam/service/backup/h;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->o()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public f(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->p()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public g(Lcom/miui/antispam/service/backup/l;)Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->q()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->r()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->r()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/miui/antispam/service/backup/c;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/antispam/service/backup/c$b;->i()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/service/backup/c;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public i()Lcom/miui/antispam/service/backup/c;
    .locals 5

    new-instance v0, Lcom/miui/antispam/service/backup/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/antispam/service/backup/c;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;Lcom/miui/antispam/service/backup/b;)V

    iget v1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->b(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x3

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_1
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->d(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/4 v4, 0x4

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_2
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->f(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x9

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_3
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->h(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v4, 0x10

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x11

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_4
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->j(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v4, 0x20

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    iget v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v2, v2, -0x21

    iput v2, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    :cond_5
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->l(Lcom/miui/antispam/service/backup/c;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v2, v1, 0x40

    const/16 v4, 0x40

    if-ne v2, v4, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->m(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/d;

    and-int/lit16 v2, v1, 0x80

    const/16 v4, 0x80

    if-ne v2, v4, :cond_7

    or-int/lit8 v3, v3, 0x2

    :cond_7
    iget-object v2, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {v0, v2}, Lcom/miui/antispam/service/backup/c;->n(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/j;

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    or-int/lit8 v3, v3, 0x4

    :cond_8
    iget-object v1, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    invoke-static {v0, v1}, Lcom/miui/antispam/service/backup/c;->o(Lcom/miui/antispam/service/backup/c;Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/i;

    invoke-static {v0, v3}, Lcom/miui/antispam/service/backup/c;->q(Lcom/miui/antispam/service/backup/c;I)I

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Lcom/miui/antispam/service/backup/c$b;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Lcom/miui/antispam/service/backup/d;->g()Lcom/miui/antispam/service/backup/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Lcom/miui/antispam/service/backup/j;->g()Lcom/miui/antispam/service/backup/j;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    invoke-static {}, Lcom/miui/antispam/service/backup/i;->j()Lcom/miui/antispam/service/backup/i;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/c$b;->t(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    check-cast p1, Lcom/miui/antispam/service/backup/c;

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/service/backup/c$b;->t(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c$b;

    move-result-object p1

    return-object p1
.end method

.method public r()Lcom/miui/antispam/service/backup/c;
    .locals 1

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    return-object v0
.end method

.method public s(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/c$b;
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {}, Lcom/miui/antispam/service/backup/d;->g()Lcom/miui/antispam/service/backup/d;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    invoke-static {v0}, Lcom/miui/antispam/service/backup/d;->q(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/d$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/service/backup/d$b;->h(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/d$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/d$b;->c()Lcom/miui/antispam/service/backup/d;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public t(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/antispam/service/backup/c$b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/miui/antispam/service/backup/c;->n:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antispam/service/backup/c;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

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

    check-cast p2, Lcom/miui/antispam/service/backup/c;
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

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c$b;->u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;

    :cond_1
    throw p1
.end method

.method public u(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/c$b;
    .locals 2

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->u()Lcom/miui/antispam/service/backup/c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->a(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->a(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->l()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->a(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->c(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->c(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->q()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->c(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    :goto_1
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->e(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->e(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->m()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->e(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_2
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->g(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->g(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->o()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->g(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->i(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->i(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_4

    :cond_9
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->p()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->i(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->k(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->k(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    goto :goto_5

    :cond_b
    invoke-direct {p0}, Lcom/miui/antispam/service/backup/c$b;->n()V

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/antispam/service/backup/c;->k(Lcom/miui/antispam/service/backup/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_c
    :goto_5
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->D()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->r()Lcom/miui/antispam/service/backup/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c$b;->s(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/c$b;

    :cond_d
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->F()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->A()Lcom/miui/antispam/service/backup/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/antispam/service/backup/c$b;->w(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/c$b;

    :cond_e
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->E()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->z()Lcom/miui/antispam/service/backup/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/antispam/service/backup/c$b;->v(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/c$b;

    :cond_f
    return-object p0
.end method

.method public v(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/c$b;
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    invoke-static {}, Lcom/miui/antispam/service/backup/i;->j()Lcom/miui/antispam/service/backup/i;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    invoke-static {v0}, Lcom/miui/antispam/service/backup/i;->x(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/i$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/service/backup/i$b;->h(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/i$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/i$b;->c()Lcom/miui/antispam/service/backup/i;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public w(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/c$b;
    .locals 3

    iget v0, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {}, Lcom/miui/antispam/service/backup/j;->g()Lcom/miui/antispam/service/backup/j;

    move-result-object v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    invoke-static {v0}, Lcom/miui/antispam/service/backup/j;->q(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/j$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/antispam/service/backup/j$b;->h(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/j$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/j$b;->c()Lcom/miui/antispam/service/backup/j;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public x(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/c$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->h:Lcom/miui/antispam/service/backup/d;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public y(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/c$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->j:Lcom/miui/antispam/service/backup/i;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method

.method public z(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/c$b;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/miui/antispam/service/backup/c$b;->i:Lcom/miui/antispam/service/backup/j;

    iget p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/miui/antispam/service/backup/c$b;->a:I

    return-object p0
.end method
