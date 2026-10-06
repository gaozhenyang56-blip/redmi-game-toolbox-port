.class public Lee/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lee/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lee/a;->a:Ljava/util/List;

    return-void
.end method

.method private d(Landroid/content/Context;Lee/a$a;IJIJ)Ljava/lang/String;
    .locals 1

    iget v0, p2, Lee/a$a;->a:I

    sub-int/2addr v0, p3

    if-lt v0, p6, :cond_0

    iget-wide p2, p2, Lee/a$a;->b:J

    sub-long/2addr p4, p2

    cmp-long p2, p4, p7

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f10007d

    long-to-int p3, p7

    div-int/lit16 p3, p3, 0x3e8

    div-int/lit8 p3, p3, 0x3c

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    aput-object p7, p4, p5

    const/4 p5, 0x1

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p4, p5

    invoke-virtual {p1, p2, p3, p4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 3

    new-instance v0, Lee/a$a;

    invoke-direct {v0}, Lee/a$a;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lee/a$a;->b:J

    iput p1, v0, Lee/a$a;->a:I

    invoke-virtual {p0, v0}, Lee/a;->b(Lee/a$a;)V

    return-void
.end method

.method public b(Lee/a$a;)V
    .locals 2

    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lee/a$a;

    iget v0, v0, Lee/a$a;->a:I

    iget v1, p1, Lee/a$a;->a:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v11, v0

    :goto_0
    if-ltz v11, :cond_3

    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lee/a$a;

    const/16 v6, 0x14

    const-wide/32 v7, 0x927c0

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move v3, p2

    move-wide v4, v9

    invoke-direct/range {v0 .. v8}, Lee/a;->d(Landroid/content/Context;Lee/a$a;IJIJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/16 v6, 0x1e

    const-wide/32 v7, 0x1b7740

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move v3, p2

    move-wide v4, v9

    invoke-direct/range {v0 .. v8}, Lee/a;->d(Landroid/content/Context;Lee/a$a;IJIJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const/16 v6, 0x32

    const-wide/32 v7, 0x36ee80

    move-object v0, p0

    move-object v1, p1

    move-object v2, v12

    move v3, p2

    move-wide v4, v9

    invoke-direct/range {v0 .. v8}, Lee/a;->d(Landroid/content/Context;Lee/a$a;IJIJ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lee/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
