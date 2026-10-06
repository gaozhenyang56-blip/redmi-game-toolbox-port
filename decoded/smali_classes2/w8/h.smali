.class public Lw8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln8/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw8/h$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Observable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lw8/h;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/Observable;

    invoke-direct {p1}, Ljava/util/Observable;-><init>()V

    iput-object p1, p0, Lw8/h;->c:Ljava/util/Observable;

    return-void
.end method

.method static synthetic c(Lw8/h;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lw8/h;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lw8/h;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lw8/h;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lw8/h;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lw8/h;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lw8/h;)Ljava/util/Observable;
    .locals 0

    iget-object p0, p0, Lw8/h;->c:Ljava/util/Observable;

    return-object p0
.end method

.method private h()V
    .locals 1

    new-instance v0, Lw8/h$a;

    invoke-direct {v0, p0}, Lw8/h$a;-><init>(Lw8/h;)V

    invoke-static {v0}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public g(Lw8/h$b;)V
    .locals 1

    iget-object v0, p0, Lw8/h;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lw8/h$b;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lw8/h;->c:Ljava/util/Observable;

    invoke-virtual {v0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-direct {p0}, Lw8/h;->h()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lw8/h;->c:Ljava/util/Observable;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    return-void
.end method
