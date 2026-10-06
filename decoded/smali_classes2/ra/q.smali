.class public Lra/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lra/q$a;
    }
.end annotation


# static fields
.field private static b:Lra/q;


# instance fields
.field private a:Lra/q$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lra/q;
    .locals 1

    sget-object v0, Lra/q;->b:Lra/q;

    if-nez v0, :cond_0

    new-instance v0, Lra/q;

    invoke-direct {v0}, Lra/q;-><init>()V

    sput-object v0, Lra/q;->b:Lra/q;

    :cond_0
    sget-object v0, Lra/q;->b:Lra/q;

    return-object v0
.end method

.method private b()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const-string v3, "storagePathDB"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "lastUpdateTime"

    const-wide/16 v5, 0x0

    invoke-interface {v2, v3, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeInterval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v5, 0x5265c00

    div-long v5, v0, v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RemoteDirDataManager"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0xf731400

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method


# virtual methods
.method public c()V
    .locals 2

    invoke-direct {p0}, Lra/q;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lra/q;->a:Lra/q$a;

    if-nez v0, :cond_0

    new-instance v0, Lra/q$a;

    invoke-direct {v0}, Lra/q$a;-><init>()V

    iput-object v0, p0, Lra/q;->a:Lra/q$a;

    invoke-static {}, Lef/z;->d()Lef/z;

    move-result-object v0

    iget-object v1, p0, Lra/q;->a:Lra/q$a;

    invoke-virtual {v0, v1}, Lef/z;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
