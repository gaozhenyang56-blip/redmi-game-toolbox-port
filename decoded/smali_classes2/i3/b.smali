.class public Li3/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Li3/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li3/b;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    sub-long/2addr v0, v2

    sput-wide v0, Li3/b;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a()J
    .locals 2

    sget-wide v0, Li3/b;->b:J

    return-wide v0
.end method

.method static synthetic b(J)J
    .locals 0

    sput-wide p0, Li3/b;->b:J

    return-wide p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    new-instance p2, Li3/b$a;

    invoke-direct {p2, p0, p1}, Li3/b$a;-><init>(Li3/b;Landroid/content/Context;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
