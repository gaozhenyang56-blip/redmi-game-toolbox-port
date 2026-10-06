.class public Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lsa/a$b;
.implements Lcom/miui/optimizecenter/storage/a$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$d;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;,
        Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;
    }
.end annotation


# instance fields
.field private a:Lwa/a;

.field private b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

.field private c:Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

.field private d:Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;

.field private e:Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

.field private f:Landroid/content/pm/IPackageStatsObserver$Stub;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:I

.field private k:Landroid/content/DialogInterface$OnClickListener;

.field private l:Landroid/content/DialogInterface$OnClickListener;

.field private m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

.field private o:Lcom/miui/optimizecenter/storage/a;

.field private p:Landroidx/recyclerview/widget/RecyclerView;

.field private q:Lsa/a;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsa/b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Landroid/view/MenuItem;

.field private t:Lsa/b;

.field private u:Lsa/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    return-void
.end method

.method private synthetic A0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->H0(I)V

    return-void
.end method

.method private synthetic B0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->I0()V

    return-void
.end method

.method private C0()V
    .locals 8

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->H0(I)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    const-string v6, "app_description_title"

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "app_description_content"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v4, v4, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v5, v5, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v4

    :goto_1
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->i:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v5, "com.miui.greenguard"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v4, v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->E0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->G0()V

    goto :goto_4

    :cond_5
    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->i:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-static {p0, v0, v3}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->y0(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->F0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    :goto_3
    invoke-direct {p0, v2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->H0(I)V

    goto :goto_4

    :cond_8
    invoke-direct {p0, v3}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->v0(I)V

    :goto_4
    return-void
.end method

.method private D0(I)V
    .locals 4

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    const v2, 0x7f121828

    const v3, 0x7f121829

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3ea

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121827

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121839

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12183a

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->show()V

    goto :goto_1

    :cond_2
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f121825

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f121824

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->k:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    invoke-virtual {p1, v3, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :goto_1
    return-void
.end method

.method private E0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lra/b;

    invoke-direct {p2, p0}, Lra/b;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    const v0, 0x7f12183d

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private F0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lra/a;

    invoke-direct {p2, p0}, Lra/a;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    const v0, 0x7f121840

    invoke-virtual {p1, v0, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private G0()V
    .locals 3

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12183c

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12183b

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;

    invoke-direct {v1, p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private H0(I)V
    .locals 3

    const v0, 0x7f12184a

    const v1, 0x7f121849

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->g:Z

    if-eqz p1, :cond_1

    const v0, 0x7f121845

    const v1, 0x7f121844

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h:Z

    if-eqz p1, :cond_2

    const v1, 0x7f121843

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->i:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object p1, p1, Lwa/a;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->y0(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const v0, 0x7f121842

    const v1, 0x7f121841

    goto :goto_1

    :cond_3
    const v0, 0x7f12183f

    const v1, 0x7f12183e

    :cond_4
    :goto_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lra/c;

    invoke-direct {v1, p0}, Lra/c;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private I0()V
    .locals 13

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->g:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v2, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget v3, v0, Lwa/a;->versionCode:I

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->e:Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

    iget v5, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->j:I

    :goto_0
    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v8, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget v9, v0, Lwa/a;->versionCode:I

    iget-object v10, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->e:Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

    iget v11, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->j:I

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->c(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v2, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget v3, v0, Lwa/a;->versionCode:I

    const/4 v4, 0x0

    const/16 v5, 0x3e7

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static synthetic d0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->B0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->A0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->z0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->D0(I)V

    return-void
.end method

.method static synthetic h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    return-object p0
.end method

.method static synthetic i0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->d:Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;

    return-object p0
.end method

.method private initView()V
    .locals 7

    const v0, 0x7f0b09d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v2, Lsa/b;

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v4, v3, Lwa/a;->appName:Ljava/lang/String;

    iget-object v5, v3, Lwa/a;->versionName:Ljava/lang/String;

    iget-object v3, v3, Lwa/a;->appIconUrl:Ljava/lang/String;

    sget-object v6, Lsa/c;->c:Lsa/c;

    invoke-direct {v2, v4, v5, v3, v6}, Lsa/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsa/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v2, Lsa/b;

    sget-object v3, Lsa/c;->d:Lsa/c;

    invoke-direct {v2, v3}, Lsa/b;-><init>(Lsa/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v2, Lsa/b;

    sget-object v3, Lsa/c;->e:Lsa/c;

    invoke-direct {v2, v3}, Lsa/b;-><init>(Lsa/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v2, Lsa/b;

    sget-object v3, Lsa/c;->f:Lsa/c;

    invoke-direct {v2, v3}, Lsa/b;-><init>(Lsa/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v2, Lsa/b;

    sget-object v3, Lsa/c;->g:Lsa/c;

    invoke-direct {v2, v3}, Lsa/b;-><init>(Lsa/c;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    invoke-virtual {v1}, Lwa/a;->getCleanType()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    new-instance v0, Lsa/b;

    sget-object v1, Lsa/c;->k:Lsa/c;

    invoke-direct {v0, v1}, Lsa/b;-><init>(Lsa/c;)V

    :goto_0
    invoke-virtual {v0, v2}, Lsa/b;->g(Z)Lsa/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->t:Lsa/b;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    invoke-virtual {v1}, Lwa/a;->getCleanType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v1, Lsa/b;

    const v3, 0x7f121835

    sget-object v4, Lsa/c;->h:Lsa/c;

    invoke-direct {v1, v3, v4}, Lsa/b;-><init>(ILsa/c;)V

    invoke-virtual {v1, v2}, Lsa/b;->g(Z)Lsa/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v1, Lsa/b;

    sget-object v3, Lsa/c;->i:Lsa/c;

    invoke-direct {v1, v3}, Lsa/b;-><init>(Lsa/c;)V

    :goto_1
    invoke-virtual {v1, v2}, Lsa/b;->g(Z)Lsa/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    new-instance v1, Lsa/b;

    const v3, 0x7f12182c

    sget-object v4, Lsa/c;->h:Lsa/c;

    invoke-direct {v1, v3, v4}, Lsa/b;-><init>(ILsa/c;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    invoke-virtual {v1}, Lwa/a;->getCleanType()I

    move-result v1

    if-ne v1, v2, :cond_3

    new-instance v1, Lsa/b;

    const v3, 0x7f12182a

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v6, v6, Lwa/a;->appName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lsa/c;->l:Lsa/c;

    invoke-direct {v1, v0, v3}, Lsa/b;-><init>(Ljava/lang/String;Lsa/c;)V

    invoke-virtual {v1, v2}, Lsa/b;->g(Z)Lsa/b;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lsa/b;

    sget-object v1, Lsa/c;->k:Lsa/c;

    invoke-direct {v0, v1}, Lsa/b;-><init>(Lsa/c;)V

    goto/16 :goto_0

    :cond_3
    :goto_2
    new-instance v0, Lsa/b;

    sget-object v1, Lsa/c;->j:Lsa/c;

    invoke-direct {v0, v1}, Lsa/b;-><init>(Lsa/c;)V

    invoke-virtual {v0, v2}, Lsa/b;->g(Z)Lsa/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u:Lsa/b;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u()V

    new-instance v0, Lsa/a;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-direct {v0, v1}, Lsa/a;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q:Lsa/a;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->p:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lmiuix/recyclerview/card/f;

    invoke-direct {v1, p0}, Lmiuix/recyclerview/card/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q:Lsa/a;

    invoke-virtual {v0, p0}, Lsa/a;->m(Lsa/a$b;)V

    return-void
.end method

.method static synthetic j0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->t:Lsa/b;

    return-object p0
.end method

.method static synthetic k0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u()V

    return-void
.end method

.method static synthetic m0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q:Lsa/a;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->o:Lcom/miui/optimizecenter/storage/a;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Landroid/content/pm/IPackageStatsObserver$Stub;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->f:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-object p0
.end method

.method static synthetic p0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->v0(I)V

    return-void
.end method

.method static synthetic q0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u:Lsa/b;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    return-object p0
.end method

.method static synthetic s0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->j:I

    return p0
.end method

.method static synthetic t0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->c:Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

    return-object p0
.end method

.method private u()V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsa/b;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$b;->a:[I

    invoke-virtual {v1}, Lsa/b;->b()Lsa/c;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-wide v3, v2, Lwa/a;->sdcardSize:J

    iget-wide v5, v2, Lwa/a;->dataSize:J

    add-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Lsa/b;->h(J)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-wide v2, v2, Lwa/a;->cacheSize:J

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-wide v2, v2, Lwa/a;->codeSize:J

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-wide v2, v2, Lwa/a;->totalSize:J

    :goto_1
    invoke-virtual {v1, v2, v3}, Lsa/b;->h(J)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q:Lsa/a;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_6
    return-void
.end method

.method static synthetic u0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    return-object p0
.end method

.method private v0(I)V
    .locals 1

    new-instance v0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;

    invoke-direct {v0, p0, p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$f;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;I)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private w0()V
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "miui.intent.action.GARBAGE_DEEPCLEAN_WECHAT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v0}, Lc4/f;->g(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iput-wide v1, v0, Lwa/a;->thirdScanSize:J

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v3, "com.tencent.mobileqq"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "miui.intent.action.GARBAGE_DEEPCLEAN_QQ"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private x0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "#Intent;component=com.tencent.mm/.plugin.clean.ui.fileindexui.CleanChattingUI;end"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1, v0}, Leg/i;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lwa/a;->thirdScanSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private static y0(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lmiui/content/pm/PreloadedAppPolicy;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v3, "isProtectedDataApp"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v0

    aput-object p1, v4, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v8

    invoke-static {v1, v2, v3, v5, v4}, Lbh/f;->g(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TAG"

    const-string p2, "isProtectedDataApp: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private synthetic z0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->G0()V

    return-void
.end method


# virtual methods
.method public A(Lsa/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Leg/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$b;->a:[I

    invoke-virtual {p1}, Lsa/b;->b()Lsa/c;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->w0()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->x0()V

    goto :goto_1

    :pswitch_2
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v0, p1, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v3, p1, Lwa/a;->pkgName:Ljava/lang/String;

    iget v5, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->j:I

    const/16 v6, 0x2726

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->I(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x3e8

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x2711

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->D0(I)V

    :cond_2
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public K(Lwa/a;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Lwa/a;->uid:I

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget v0, v0, Lwa/a;->uid:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e004c

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "AppStorageDetail"

    if-nez p1, :cond_0

    const-string p1, "Intent is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "model"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "uId"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz p1, :cond_3

    if-ne v1, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->o:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {v2, p1, v1}, Lcom/miui/optimizecenter/storage/a;->y(Ljava/lang/String;I)Lwa/a;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    if-nez p1, :cond_2

    const-string p1, "StorageStats is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->o:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1, p0}, Lcom/miui/optimizecenter/storage/a;->S(Lcom/miui/optimizecenter/storage/a$d;)V

    new-instance p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    invoke-direct {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->c:Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    invoke-direct {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->d:Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    invoke-direct {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->e:Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    invoke-virtual {p1}, Lwa/a;->isSystemApp()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->i:Z

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->initView()V

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->k(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;

    invoke-direct {p1, p0, p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$h;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->f:Landroid/content/pm/IPackageStatsObserver$Stub;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget v1, v1, Lwa/a;->uid:I

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->A(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->g:Z

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v1, v1, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->x(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h:Z

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n:Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget v1, v1, Lwa/a;->uid:I

    invoke-virtual {p1, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->v(I)I

    move-result p1

    iput p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->j:I

    new-instance p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;

    invoke-direct {p1, p0, v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->k:Landroid/content/DialogInterface$OnClickListener;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;

    invoke-direct {p1, p0, v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->l:Landroid/content/DialogInterface$OnClickListener;

    new-instance p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$d;

    invoke-direct {p1, p0, v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$d;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m:Landroid/content/DialogInterface$OnClickListener;

    return-void

    :cond_3
    :goto_0
    const-string p1, "argPkg is null ||  uid == -1"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    if-eqz v0, :cond_1

    const v0, 0x7f121831

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    const v3, 0x7f08037d

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->a:Lwa/a;

    iget-object v2, v2, Lwa/a;->pkgName:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/appmanager/AppManageUtils;->b0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {p0}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/optimizecenter/storage/a;->X(Lcom/miui/optimizecenter/storage/a$d;)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->c:Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;->release()V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->d:Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$CacheDataObserver;->release()V

    :cond_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->e:Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/optimizecenter/storage/AppSystemDataManager$UninstallPkgObserver;->release()V

    :cond_2
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->b:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_3
    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->C0()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u()V

    return-void
.end method

.method public synthetic w(Lwa/a;)V
    .locals 0

    invoke-static {p0, p1}, Lra/u;->a(Lcom/miui/optimizecenter/storage/a$d;Lwa/a;)V

    return-void
.end method
