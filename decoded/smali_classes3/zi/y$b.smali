.class Lzi/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lzi/y;


# direct methods
.method private constructor <init>(Lzi/y;)V
    .locals 0

    iput-object p1, p0, Lzi/y$b;->a:Lzi/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzi/y;Lzi/z;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/y$b;-><init>(Lzi/y;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lzi/y$b;->a:Lzi/y;

    invoke-static {p1}, Lzi/y;->e(Lzi/y;)Lzi/y$a;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lzi/a0;

    invoke-direct {v0, p0, p2}, Lzi/a0;-><init>(Lzi/y$b;Landroid/os/IBinder;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
