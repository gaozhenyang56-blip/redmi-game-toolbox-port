.class Lzi/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lzi/o;


# direct methods
.method private constructor <init>(Lzi/o;)V
    .locals 0

    iput-object p1, p0, Lzi/o$a;->a:Lzi/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lzi/o;Lzi/p;)V
    .locals 0

    invoke-direct {p0, p1}, Lzi/o$a;-><init>(Lzi/o;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lzi/q;

    invoke-direct {v0, p0, p2}, Lzi/q;-><init>(Lzi/o$a;Landroid/os/IBinder;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
