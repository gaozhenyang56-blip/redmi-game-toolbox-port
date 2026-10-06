.class public Ls9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static volatile a:Ls9/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ls9/b;
    .locals 2

    sget-object v0, Ls9/a;->a:Ls9/b;

    if-nez v0, :cond_2

    const-class v0, Ls9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls9/a;->a:Ls9/b;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p0

    :cond_0
    new-instance v1, Ls9/b;

    invoke-direct {v1, p0}, Ls9/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Ls9/a;->a:Ls9/b;

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    sget-object p0, Ls9/a;->a:Ls9/b;

    return-object p0
.end method
