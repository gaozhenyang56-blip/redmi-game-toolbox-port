.class public Lcom/miui/gamebooster/ui/OverLayPermissionDialog;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const-class v0, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;->d:Ljava/lang/String;

    return-void
.end method

.method private j0()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120fbc

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120fbb

    goto :goto_0

    :cond_1
    const v0, 0x7f120fba

    :goto_0
    return v0
.end method

.method private k0()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    invoke-static {}, La8/z;->d()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "is_from_settings_homepage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jumpOverLayPermissionSettings fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1

    const v0, 0x7f120fbe

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;->j0()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;->i0()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setComment(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1205e8

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120fbd

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    return-void
.end method

.method public i0()I
    .locals 1

    sget-boolean v0, Lcom/miui/common/i;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120fb9

    return v0

    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120fb8

    goto :goto_0

    :cond_1
    const v0, 0x7f120fb7

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/OverLayPermissionDialog;->k0()V

    :cond_0
    return-void
.end method
