.class public Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Lmiuix/appcompat/app/AlertDialog;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltc/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;Ltc/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->i0(Ltc/h;)V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->j0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->h0()V

    return-void
.end method

.method private g0(Landroid/view/View;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0b08d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0718b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method private h0()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0438

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->g0(Landroid/view/View;)V

    const v1, 0x7f0b06d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$n;)V

    new-instance v3, Lcom/miui/permcenter/capsule/b;

    invoke-direct {v3, p0}, Lcom/miui/permcenter/capsule/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object v1, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->b:Ljava/util/List;

    invoke-virtual {v3, v1}, Lcom/miui/permcenter/capsule/b;->n(Ljava/util/List;)V

    new-instance v1, Lpb/b;

    invoke-direct {v1, p0}, Lpb/b;-><init>(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V

    invoke-virtual {v3, v1}, Lcom/miui/permcenter/capsule/b;->m(Lcom/miui/permcenter/capsule/b$b;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    const v3, 0x7f130023

    invoke-direct {v1, p0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f121344

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lpb/c;

    invoke-direct {v3, p0}, Lpb/c;-><init>(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f121905

    invoke-virtual {v0, v3, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    :cond_0
    const-string v0, "capsule_click"

    invoke-static {v0}, Lmb/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic i0(Ltc/h;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Ltc/h;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class p1, Lcom/miui/devicepermission/editpermission/DevicePermissionSettingsActivity;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->k0(Landroid/content/Intent;)V

    goto :goto_1

    :cond_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_3

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1}, Ltc/h;->c()I

    move-result p1

    invoke-static {p1}, Lx4/z1;->z(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lx4/v;->u(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :cond_3
    const-string v1, "miui.intent.action.APP_PERM_EDITOR_PRIVATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ltc/h;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ltc/h;->c()I

    move-result v1

    const-string v2, "userId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Ltc/h;->c()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ltc/h;->c()I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic j0(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private k0(Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MIUISafety-Flares"

    const-string v1, "safetStartActivity: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ldb/c;->a()I

    move-result p1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "DATA"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->b:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "MIUISafety-Flares"

    const-string v1, "get data error"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_3
    const-string p1, "keyguard"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity$a;-><init>(Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;)V

    invoke-static {p1, p0, v0}, Lpb/a;->a(Landroid/app/KeyguardManager;Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->h0()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/miui/common/base/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/capsule/FlaresCapsuleOpenActivity;->a:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-static {p0}, La8/d1;->a(Landroid/content/Context;)V

    return-void
.end method
