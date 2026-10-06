.class public Lk6/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lk6/e;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lk6/e;->b:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lk6/e;->c:Ljava/util/List;

    const-string v2, "merlinnfc"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "merlin"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cactus"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cereus"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lk5/a;->G(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lx4/t;->x()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget-object p0, Lk6/e;->a:Ljava/util/List;

    invoke-static {p0}, Lx4/a0;->r(Ljava/util/List;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lx4/a0;->v()Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    invoke-static {}, Lx4/k0;->h()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_5

    sget-object p0, Lk6/e;->b:Ljava/util/List;

    goto :goto_0

    :cond_5
    sget-object p0, Lk6/e;->c:Ljava/util/List;

    :goto_0
    invoke-static {p0}, Lx4/a0;->r(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Li8/c;->P()Z

    move-result p0

    invoke-static {}, Li8/c;->O()Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1

    :cond_8
    invoke-static {}, Lgl/a;->D()Z

    move-result p0

    return p0
.end method
