.class Lve/g$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/g;->k(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONArray;

.field final synthetic b:Lcom/miui/securitycenter/Application;

.field final synthetic c:Lve/g;


# direct methods
.method constructor <init>(Lve/g;Lorg/json/JSONArray;Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lve/g$d;->c:Lve/g;

    iput-object p2, p0, Lve/g$d;->a:Lorg/json/JSONArray;

    iput-object p3, p0, Lve/g$d;->b:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lve/g$d;->c:Lve/g;

    invoke-static {p2}, Lcom/miui/gameturbo/active/IActiveManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/gameturbo/active/IActiveManager;

    move-result-object p2

    invoke-static {p1, p2}, Lve/g;->c(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;)Lcom/miui/gameturbo/active/IActiveManager;

    :try_start_0
    iget-object p1, p0, Lve/g$d;->c:Lve/g;

    invoke-static {p1}, Lve/g;->b(Lve/g;)Lcom/miui/gameturbo/active/IActiveManager;

    move-result-object p2

    iget-object v0, p0, Lve/g$d;->a:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lve/g;->h(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;Ljava/lang/String;)V

    iget-object p1, p0, Lve/g$d;->b:Lcom/miui/securitycenter/Application;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lve/g$d;->c:Lve/g;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lve/g;->c(Lve/g;Lcom/miui/gameturbo/active/IActiveManager;)Lcom/miui/gameturbo/active/IActiveManager;

    return-void
.end method
