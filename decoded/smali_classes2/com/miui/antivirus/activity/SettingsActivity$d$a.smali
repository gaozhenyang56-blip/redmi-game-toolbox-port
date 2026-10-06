.class Lcom/miui/antivirus/activity/SettingsActivity$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/antivirus/activity/SettingsActivity$d;->A(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

.field final synthetic b:Lcom/miui/guardprovider/aidl/UpdateInfo;

.field final synthetic c:Lcom/miui/antivirus/activity/SettingsActivity$d;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$d;Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->c:Lcom/miui/antivirus/activity/SettingsActivity$d;

    iput-object p2, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iput-object p3, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->b:Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    iget-object v1, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->b:Lcom/miui/guardprovider/aidl/UpdateInfo;

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->d0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d$a;->a:Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->p0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/antivirus/activity/SettingsActivity$c;)Lcom/miui/antivirus/activity/SettingsActivity$c;

    :cond_1
    :goto_0
    return-void
.end method
