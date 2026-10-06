.class public Lcom/miui/gamebooster/service/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/service/y$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "remote_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/gamebooster/service/y;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/service/y$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/service/y;-><init>()V

    return-void
.end method

.method public static b()Lcom/miui/gamebooster/service/y;
    .locals 1

    invoke-static {}, Lcom/miui/gamebooster/service/y$b;->a()Lcom/miui/gamebooster/service/y;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/service/y;->a:Landroid/os/HandlerThread;

    return-object v0
.end method
