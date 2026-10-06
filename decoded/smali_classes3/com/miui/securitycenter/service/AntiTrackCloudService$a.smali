.class Lcom/miui/securitycenter/service/AntiTrackCloudService$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/AntiTrackCloudService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/miui/securitycenter/service/AntiTrackCloudService;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/AntiTrackCloudService;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->c:Lcom/miui/securitycenter/service/AntiTrackCloudService;

    iput-object p3, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->b:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AntiTrackCloudService"

    const-string v0, "listen settings key changed!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->c:Lcom/miui/securitycenter/service/AntiTrackCloudService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/service/AntiTrackCloudService;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/securitycenter/service/AntiTrackCloudService$a;->b:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lc3/q;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
