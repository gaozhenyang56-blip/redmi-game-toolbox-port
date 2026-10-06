.class Lcom/miui/antivirus/activity/SettingsActivity$d;
.super Lcom/miui/guardprovider/VirusObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/guardprovider/VirusObserver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public A(Lcom/miui/guardprovider/aidl/UpdateInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/SettingsActivity$d;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v1

    new-instance v2, Lcom/miui/antivirus/activity/SettingsActivity$d$a;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/antivirus/activity/SettingsActivity$d$a;-><init>(Lcom/miui/antivirus/activity/SettingsActivity$d;Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;Lcom/miui/guardprovider/aidl/UpdateInfo;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g8(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/guardprovider/VirusObserver;->g8(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/antivirus/activity/SettingsActivity$d;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;->c0(Lcom/miui/antivirus/activity/SettingsActivity$SettingsFragment;)Lcom/miui/antivirus/activity/SettingsActivity;

    move-result-object p1

    invoke-static {p1}, Lp9/a;->j(Landroid/content/Context;)Lp9/a;

    move-result-object p1

    invoke-virtual {p1}, Lp9/a;->m()V

    :cond_0
    return-void
.end method
