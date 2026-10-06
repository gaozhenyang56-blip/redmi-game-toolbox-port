.class Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    const-string p1, "PowerDetailActivity"

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powerkeeper/IPowerKeeper;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.miui.powerkeeper.configure/SimpleSettings/misc"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "GET_misc"

    const-string v5, "user_de_configured_apps"

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "getPairValue"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lbh/f;->f(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Get powerkeeper deconfiguredapps failed"

    invoke-static {p1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->r0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "App"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_5

    invoke-static {}, Lx4/z1;->y()I

    move-result v3

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->l0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)I

    move-result v3

    :goto_1
    const-string v4, "UserId"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    :try_start_1
    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->i0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lcom/miui/powerkeeper/IPowerKeeper;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/miui/powerkeeper/IPowerKeeper;->t0(Landroid/os/Bundle;Landroid/os/Bundle;)I

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "AppConfigure"

    invoke-virtual {v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, p1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v2, "getPowerSaveAppConfigure error"

    invoke-static {p1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_2
    return-object v1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->n0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Lmiuix/preference/CommentPreference;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->m0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-static {v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->o0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;->p0(Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$PowerDetailFragment;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/legacypowerrank/PowerDetailActivity$b;->b(Ljava/lang/String;)V

    return-void
.end method
