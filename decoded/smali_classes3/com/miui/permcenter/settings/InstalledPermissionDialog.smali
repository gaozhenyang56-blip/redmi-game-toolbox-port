.class public Lcom/miui/permcenter/settings/InstalledPermissionDialog;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/CharSequence;

.field private d:I

.field private e:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/settings/InstalledPermissionDialog$b;-><init>(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)V

    iput-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic d0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)I
    .locals 0

    iget p0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->d:I

    return p0
.end method

.method static synthetic e0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->a:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/permcenter/settings/InstalledPermissionDialog;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->a:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private h0()V
    .locals 6

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f130023

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f080e3d

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1210eb

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->c:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12110f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f121107

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12110d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->e:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->a:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/settings/InstalledPermissionDialog$a;-><init>(Lcom/miui/permcenter/settings/InstalledPermissionDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->a:Lmiuix/appcompat/app/AlertDialog;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v1}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07090f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNoticeDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstalledPermissionDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {}, Lcom/miui/permcenter/f;->d()Lcom/miui/permcenter/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/f;->h()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->finish()V

    return-void

    :cond_0
    const-string v0, "intent_extra_pkg_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->b:Ljava/lang/String;

    const-string v0, "intent_extra_pkg_label"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->c:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "intent_extra_user_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->d:I

    invoke-direct {p0}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->h0()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lcom/miui/permcenter/settings/InstalledPermissionDialog;->finish()V

    return-void
.end method
