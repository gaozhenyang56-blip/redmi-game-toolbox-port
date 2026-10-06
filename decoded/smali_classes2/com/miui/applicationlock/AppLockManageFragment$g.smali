.class Lcom/miui/applicationlock/AppLockManageFragment$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/AppLockManageFragment;->Y0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/AppLockManageFragment;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/AppLockManageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/AppLockManageFragment$g;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "AppLockManageFragment"

    :try_start_0
    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment$g;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.faceunlock.MiuiFaceDataInput"

    invoke-static {p2, v0, v1}, Lc3/f;->e0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$g;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {v0}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p2, "go to systemUI for register"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/miui/applicationlock/AppLockManageFragment$g;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    invoke-static {p2}, Lcom/miui/applicationlock/AppLockManageFragment;->Q0(Lcom/miui/applicationlock/AppLockManageFragment;)Landroid/app/Activity;

    move-result-object p2

    const-string v0, "com.android.systemui"

    const-string v1, "com.android.keyguard.settings.MiuiFaceDataInput"

    invoke-static {p2, v0, v1}, Lc3/f;->e0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/AppLockManageFragment$g;->a:Lcom/miui/applicationlock/AppLockManageFragment;

    const/16 v1, 0x22

    invoke-virtual {v0, p2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "start activity error: "

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
