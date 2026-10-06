.class final La8/q1$b;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La8/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile b:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, La8/q1$b;->a:Landroid/content/Context;

    iput-object p2, p0, La8/q1$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, La8/q1$b;->a()V

    return-void
.end method

.method private final a()V
    .locals 3

    const-string v0, "ProvisionAcceptHelper"

    const-string v1, "registerContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La8/q1$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clause_agreed"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private final b()V
    .locals 2

    const-string v0, "ProvisionAcceptHelper"

    const-string v1, "unregisterContentObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, La8/q1$b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    sget-object p1, La8/q1;->a:La8/q1$a;

    iget-object v0, p0, La8/q1$b;->a:Landroid/content/Context;

    invoke-static {p1, v0}, La8/q1$a;->a(La8/q1$a;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La8/q1$b;->b:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object p1

    iget-object v0, p0, La8/q1$b;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lef/z;->b(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, La8/q1$b;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, La8/q1$b;->b()V

    :cond_0
    return-void
.end method
