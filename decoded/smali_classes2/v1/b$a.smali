.class Lv1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lv1/b;


# direct methods
.method private constructor <init>(Lv1/b;)V
    .locals 0

    iput-object p1, p0, Lv1/b$a;->a:Lv1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lv1/b;Lv1/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lv1/b$a;-><init>(Lv1/b;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lv1/b$a;->a:Lv1/b;

    invoke-virtual {p1, p2}, Lv1/b;->s8(Landroid/os/IBinder;)V

    new-instance p1, Lv1/b$a$a;

    invoke-direct {p1, p0}, Lv1/b$a$a;-><init>(Lv1/b$a;)V

    iget-object p2, p0, Lv1/b$a;->a:Lv1/b;

    invoke-static {p2}, Lv1/b;->v1(Lv1/b;)Ljava/util/concurrent/Executor;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p1, p0, Lv1/b$a;->a:Lv1/b;

    invoke-virtual {p1}, Lv1/b;->onDisconnected()V

    return-void
.end method
