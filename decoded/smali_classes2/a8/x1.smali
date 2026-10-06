.class public La8/x1;
.super La8/y1;
.source "SourceFile"


# static fields
.field private static volatile c:La8/x1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, La8/y1;-><init>()V

    return-void
.end method

.method public static l()La8/x1;
    .locals 2

    sget-object v0, La8/x1;->c:La8/x1;

    if-nez v0, :cond_1

    const-class v0, La8/x1;

    monitor-enter v0

    :try_start_0
    sget-object v1, La8/x1;->c:La8/x1;

    if-nez v1, :cond_0

    new-instance v1, La8/x1;

    invoke-direct {v1}, La8/x1;-><init>()V

    sput-object v1, La8/x1;->c:La8/x1;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, La8/x1;->c:La8/x1;

    return-object v0
.end method


# virtual methods
.method protected f()V
    .locals 3

    iget-object v0, p0, La8/y1;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "game_box_ve_helper"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, La8/y1;->a:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method
