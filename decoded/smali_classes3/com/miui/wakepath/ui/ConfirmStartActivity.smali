.class public Lcom/miui/wakepath/ui/ConfirmStartActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/wakepath/ui/ConfirmStartActivity$a;
    }
.end annotation


# static fields
.field private static final p:Ljava/lang/String;


# instance fields
.field private d:Z

.field private e:Landroid/content/Intent;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Ljava/lang/String;

.field private o:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/wakepath/ui/ConfirmStartActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->j0()V

    return-void
.end method

.method private j0()V
    .locals 3

    :try_start_0
    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->addRestrictChainMaps(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->o:Landroid/content/pm/PackageInfo;

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "click"

    invoke-static {v0, v1, v2}, Lmb/b;->d(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private k0()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "calleePkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;

    const/16 v2, 0x64

    invoke-direct {v1, p0, v2, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;-><init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;ILandroid/os/Bundle;)V

    invoke-static {v1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private l0()Z
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x21

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    iget v5, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->h:I

    if-ne v3, v5, :cond_1

    move v2, v4

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    return v4

    :cond_3
    sget-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "getLaunchedFromUid"

    invoke-static {v0, p0, v5, v2, v3}, Lbh/e;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    iget v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->i:I

    invoke-static {v2}, Lx4/z1;->b(I)I

    move-result v2

    if-eq v0, v2, :cond_4

    return v4

    :cond_4
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    iget v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->i:I

    invoke-static {v2}, Lx4/z1;->b(I)I

    move-result v2

    if-eq v0, v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lx4/f1;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lx4/z1;->b(I)I

    move-result v0

    iget v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->j:I

    invoke-static {v2}, Lx4/z1;->b(I)I

    move-result v2

    if-eq v0, v2, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    if-nez v0, :cond_7

    move v1, v4

    :cond_7
    return v1

    :cond_8
    :goto_1
    return v4
.end method

.method private m0(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p3, "packageName"

    invoke-virtual {v0, p3, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "restrictedPath"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;

    const/16 p2, 0x12c

    invoke-direct {p1, p0, p2, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;-><init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;ILandroid/os/Bundle;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private n0(Z)V
    .locals 3

    invoke-static {}, Lmc/c;->l()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "calleePkg"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->h:I

    const-string v1, "user"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->i:I

    const-string v1, "callerUid"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    new-instance p1, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;

    const/16 v1, 0xc8

    invoke-direct {p1, p0, v1, v0}, Lcom/miui/wakepath/ui/ConfirmStartActivity$a;-><init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;ILandroid/os/Bundle;)V

    invoke-static {p1}, Lcom/miui/common/base/asyn/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private o0(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120162

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0807dc

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12092c

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p5, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const p1, 0x7f120161

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    const p1, 0x7f0807da

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12085f

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p5, p3, v1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private p0(Z)V
    .locals 6

    const-string v0, "android.intent.action.SEND"

    const-string v1, "android.intent.action.PICK"

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    if-eqz v2, :cond_6

    :try_start_0
    sget-boolean v3, Lcom/miui/permcenter/o;->g:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    iget v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->i:I

    :goto_0
    invoke-direct {p0, v2, v3, v4}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->m0(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    iget v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p:Ljava/lang/String;

    const-string v4, "remountFileException!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Lc3/f;->l()V

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->h:I

    invoke-static {p0, v2, v3, v4, v5}, Lx4/v;->t(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lc3/f;->p()V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->d:Z

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/miui/permcenter/o;->g:Z

    if-eqz p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->k0()V

    :cond_4
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->n0(Z)V

    iget-object p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-static {p1, v0}, Lmb/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    invoke-static {}, Lc3/f;->p()V

    throw p1

    :cond_6
    sget-object p1, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p:Ljava/lang/String;

    const-string v0, "intent == null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 3

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0e046f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120470

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->d:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12047a

    goto :goto_0

    :cond_0
    const v0, 0x7f121107

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "CallerPkgName"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    const-string v2, "CalleePkgName"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "UserId"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->h:I

    const-string v2, "callerUserId"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->i:I

    const-string v2, "calleeUserId"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->j:I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-static {v2, v3}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->l:Ljava/lang/String;

    const-string v2, "restrictForChain"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->m:Z

    const-string v2, "restrictForGetApps"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->d:Z

    :cond_0
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-direct {p0}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->l0()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/miui/common/base/AlertActivity;->c:Z

    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    iget v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->h:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ltg/a;->d(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->o:Landroid/content/pm/PackageInfo;

    iget-boolean v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->m:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "com.tencent.mm"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.sina.weibo.sdk.action.ACTION_SDK_REQ_ACTIVITY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, ".wxapi.WXEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v2, ".wxapi.WXPayEntryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120369

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->k:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->l:Ljava/lang/String;

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->o:Landroid/content/pm/PackageInfo;

    iget-object v4, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    const-string v5, "expose"

    invoke-static {v3, v4, v5}, Lmb/b;->d(Landroid/content/pm/PackageInfo;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/wakepath/ui/e;->f(Landroid/content/Context;)Lcom/miui/wakepath/ui/e;

    move-result-object v3

    new-instance v4, Lcom/miui/wakepath/ui/a;

    invoke-direct {v4, p0}, Lcom/miui/wakepath/ui/a;-><init>(Lcom/miui/wakepath/ui/ConfirmStartActivity;)V

    invoke-virtual {v3, v0, v2, v4}, Lcom/miui/wakepath/ui/e;->n(Ljava/lang/String;Ljava/lang/String;Lcom/miui/wakepath/ui/e$b;)V

    goto :goto_3

    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p0(Z)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-direct {p0, v3}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p0(Z)V

    sget-object v0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p:Ljava/lang/String;

    const-string v2, "onActivityCreated: toast"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-boolean v1, p0, Lcom/miui/common/base/AlertActivity;->c:Z

    :cond_8
    return-void

    :cond_9
    :goto_4
    iput-boolean v1, p0, Lcom/miui/common/base/AlertActivity;->c:Z

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    const v0, 0x7f0b0506

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f0b08ae

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0b038b

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/widget/TextView;

    const/4 p1, 0x0

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    if-eqz v5, :cond_4

    sget-boolean v0, Lcom/miui/permcenter/o;->g:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->k:Ljava/lang/String;

    :goto_1
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->o0(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->e:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->l:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const v0, 0x7f12014e

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0807dd

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121bc5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->k:Ljava/lang/String;

    aput-object v2, v1, p1

    const/4 p1, 0x1

    iget-object v2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->l:Ljava/lang/String;

    aput-object v2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->p0(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/wakepath/ui/ConfirmStartActivity;->n0(Z)V

    iget-object p2, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/wakepath/ui/ConfirmStartActivity;->g:Ljava/lang/String;

    invoke-static {p2, v0}, Lmb/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    return-void
.end method
