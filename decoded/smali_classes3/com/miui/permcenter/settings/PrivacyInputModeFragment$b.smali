.class Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/settings/PrivacyInputModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;


# direct methods
.method constructor <init>(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "PrivacyInputMode"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->d0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)V

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p1, v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->e0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->f0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)Z

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    invoke-static {p1}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->g0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->e0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->f0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)Z

    const-string p1, "PrivacyInputMode"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/permcenter/settings/PrivacyInputModeFragment$b;->a:Lcom/miui/permcenter/settings/PrivacyInputModeFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/permcenter/settings/PrivacyInputModeFragment;->d0(Lcom/miui/permcenter/settings/PrivacyInputModeFragment;Z)V

    return-void
.end method
