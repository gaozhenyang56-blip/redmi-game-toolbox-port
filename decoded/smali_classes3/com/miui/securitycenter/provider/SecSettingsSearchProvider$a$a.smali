.class Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a$a;->a:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p2, p0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a$a;->a:Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;

    iget-object p2, p2, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$a;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;

    invoke-virtual {v0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->b(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/securitycenter/provider/SecSettingsSearchProvider$b;->d()V

    goto :goto_0

    :cond_1
    return-void
.end method
