.class Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->b:Ljava/lang/String;

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/guardprovider/aidl/IAntiVirusServer;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/b$b;

    iget-object v2, v1, Lo2/b$b;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lo2/b$b;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->W(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lo2/b$b;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/miui/guardprovider/aidl/IAntiVirusServer;->W(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment$h;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->s0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lo2/b;

    move-result-object v0

    invoke-virtual {v0}, Lo2/b;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->t0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "SettingsActivity"

    const-string v1, "msg"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
