.class public Lqd/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lqd/c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lqd/c;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lqd/c;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lqd/c;->d(Ljava/util/List;)V

    return-void
.end method

.method public static c()Lqd/c;
    .locals 1

    sget-object v0, Lqd/c;->b:Lqd/c;

    if-nez v0, :cond_0

    new-instance v0, Lqd/c;

    invoke-direct {v0}, Lqd/c;-><init>()V

    sput-object v0, Lqd/c;->b:Lqd/c;

    :cond_0
    sget-object v0, Lqd/c;->b:Lqd/c;

    return-object v0
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lqd/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lqd/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lqd/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lqd/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p1}, Lx4/u;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lef/x;->z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lqd/b;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lqd/c$a;

    invoke-direct {v1, p0}, Lqd/c$a;-><init>(Lqd/c;)V

    invoke-direct {v0, p1, v1}, Lqd/b;-><init>(Landroid/content/Context;Lqd/b$a;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    :goto_0
    return-void
.end method
