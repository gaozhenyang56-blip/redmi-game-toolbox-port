.class public Lcom/miui/permcenter/install/AdbInstallActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/install/AdbInstallActivity$b;
    }
.end annotation


# instance fields
.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/os/IMessenger;

.field private g:Lxb/g;

.field private h:Lxb/b;

.field private i:Landroid/widget/CheckBox;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/Button;

.field private n:Ljava/lang/CharSequence;

.field private o:I

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    return-void
.end method

.method static synthetic i0(Lcom/miui/permcenter/install/AdbInstallActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    return p0
.end method

.method static synthetic j0(Lcom/miui/permcenter/install/AdbInstallActivity;)I
    .locals 2

    iget v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    return v0
.end method

.method static synthetic k0(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->m0()V

    return-void
.end method

.method static synthetic l0(Lcom/miui/permcenter/install/AdbInstallActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->q0()V

    return-void
.end method

.method private m0()V
    .locals 3

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {v1, v2}, Lxb/b;->d(Lxb/g;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {v2}, Lxb/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxb/b;->B(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {v1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmb/a;->g(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/permcenter/install/AdbInstallActivity;->p0(Z)V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void
.end method

.method private n0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1

    const v0, 0x7f0b0339

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->i:Landroid/widget/CheckBox;

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->j:Landroid/widget/ImageView;

    const v0, 0x7f0b07e7

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->l:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->m:Landroid/widget/Button;

    return-void
.end method

.method private o0(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private p0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxb/g;->d(I)V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lxb/b;->f(Lxb/g;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {p1}, Lxb/b;->x()V

    :cond_2
    return-void
.end method

.method private q0()V
    .locals 5

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->m:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v1, 0x7f121565

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e042a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120c68

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120590

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->o:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f121565

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 12

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "observer"

    invoke-static {v0, v2}, Lcom/miui/permcenter/compact/IntentCompat;->getIBinderExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p0}, Lxb/b;->m(Landroid/content/Context;)Lxb/b;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    new-instance v3, Lcom/miui/permcenter/install/AdbInstallActivity$b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/permcenter/install/AdbInstallActivity$b;-><init>(Lcom/miui/permcenter/install/AdbInstallActivity;Lcom/miui/permcenter/install/AdbInstallActivity$a;)V

    iput-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->p:Landroid/os/Handler;

    invoke-static {v2}, Landroid/os/IMessenger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IMessenger;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->f:Landroid/os/IMessenger;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v2}, Lxb/b;->t()Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_1

    :goto_0
    iput v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    :goto_1
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v4, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "AdbInstallActivity"

    if-eq v0, v3, :cond_5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->o0(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "resolvedBaseCodePath"

    const-class v5, Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lbh/f;->k(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "reflect exception!"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_3
    const-string v0, "Failure [Invalid sessionId]"

    iput-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v0}, Lxb/b;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    :cond_4
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_5
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/16 v5, 0x80

    const-string v6, "flags"

    invoke-virtual {v1, v6, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "content://guard"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "parseApk"

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "Failure [Invalid apk]"

    const-string v8, " parsePackage is null , path \uff1a"

    if-nez v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v0}, Lxb/b;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    :cond_6
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_7
    const-string v10, "pkgInfo"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageInfo;

    if-nez v11, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v5, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->e:Ljava/lang/String;

    invoke-static {}, Lcom/miui/permcenter/compact/AppOpsUtilsCompat;->isXOptMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v0}, Lxb/b;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    iput v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    :cond_8
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_9
    const-string v4, "label"

    invoke-virtual {v1, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    const-string v4, "icon"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-nez v1, :cond_a

    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_a
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->k:Landroid/graphics/drawable/Drawable;

    :goto_3
    iget-object v1, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void

    :cond_b
    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v2, v1}, Lxb/b;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v2, v6, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v9, v0, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v2, v0}, Lxb/b;->w(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v0}, Lxb/b;->r()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb/b;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->o0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    invoke-virtual {v0, v1}, Lxb/b;->p(Ljava/lang/String;)Lxb/g;

    move-result-object v0

    new-instance v2, Lxb/g;

    invoke-direct {v2}, Lxb/g;-><init>()V

    iput-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {v2, v1}, Lxb/g;->f(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    iget-object v2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lxb/g;->e(Ljava/lang/String;)V

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lxb/g;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->h:Lxb/b;

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxb/b;->C(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {v0}, Lxb/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmb/a;->d(Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->finish()V

    return-void
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->p:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    invoke-direct {p0, p1}, Lcom/miui/permcenter/install/AdbInstallActivity;->n0(Lmiuix/appcompat/app/AlertDialog;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->n:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/install/AdbInstallActivity;->q0()V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->p:Landroid/os/Handler;

    const/16 v0, 0xa

    const-wide/16 v1, 0x640

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p2, p1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    invoke-direct {p0, v1}, Lcom/miui/permcenter/install/AdbInstallActivity;->p0(Z)V

    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lmb/a;->c(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->g:Lxb/g;

    invoke-virtual {p1}, Lxb/g;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p2

    invoke-static {p1, v1, p2}, Lmb/a;->c(Ljava/lang/String;ZZ)V

    iput v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/miui/common/base/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->p:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->f:Landroid/os/IMessenger;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iget v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->d:I

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "msg"

    iget-object v3, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/permcenter/install/AdbInstallActivity;->f:Landroid/os/IMessenger;

    invoke-interface {v1, v0}, Landroid/os/IMessenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
