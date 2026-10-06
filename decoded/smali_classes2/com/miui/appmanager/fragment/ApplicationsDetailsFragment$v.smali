.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "v"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->b:Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "ApplicationsDetailsActivity"

    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "android.os.ServiceManager"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getService"

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "usb"

    aput-object v8, v7, v2

    invoke-static {v4, v5, v6, v7}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const-string v5, "android.hardware.usb.IUsbManager$Stub"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "asInterface"

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v2

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v4, v8, v2

    invoke-static {v5, v6, v7, v8}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->f0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "reflect error while get usb manager service"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v4, 0x0

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_icon://"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v5

    const/16 v6, 0x3e7

    if-ne v5, v6, :cond_3

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pkg_icon_xspace://"

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/appmanager/widget/AppDetailTitlePreference;->f(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->R0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->s1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/widget/AppDetailTitlePreference;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/miui/appmanager/widget/AppDetailTitlePreference;->e(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->g0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/miui/appmanager/AppManageUtils;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/appmanager/AppManageUtils;->a0(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->I:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "is not allowed to update auto start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->E1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_7
    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$v;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lx4/k1;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Le3/c;->a:Ljava/util/List;

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->v0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->H1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Landroidx/preference/PreferenceCategory;

    move-result-object v0

    invoke-static {v1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->G1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lmiuix/preference/TextPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_5
    return-void
.end method
