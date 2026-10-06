.class public final Lcom/miui/permcenter/AccessibilityServiceActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:I

.field private j:Landroid/content/pm/PackageInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroid/content/ComponentName;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Landroid/os/Messenger;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const-string v0, "AccessibilityService"

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->d:Ljava/lang/String;

    const-string v0, "component_name"

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->e:Ljava/lang/String;

    const-string v0, "isReset"

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->f:Ljava/lang/String;

    const-string v0, "key_accessibility_code"

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->g:Ljava/lang/String;

    const-string v0, "key_accessibility_messenger"

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->h:Ljava/lang/String;

    const/16 v0, 0x9

    iput v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->i:I

    return-void
.end method

.method public static synthetic i0(Lcom/miui/permcenter/AccessibilityServiceActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->j0(Lcom/miui/permcenter/AccessibilityServiceActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private static final j0(Lcom/miui/permcenter/AccessibilityServiceActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void
.end method

.method private final k0()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121a45

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resources.getString(R.st\u2026quest_perm_accessibility)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lbk/b0;->a:Lbk/b0;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->j:Landroid/content/pm/PackageInfo;

    invoke-static {v4}, Lbk/m;->b(Ljava/lang/Object;)V

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(format, *args)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0b0bc9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b029e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1210e1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const-string v1, "view"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final l0(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lxc/a;->a(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method private final m0(Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->d:Ljava/lang/String;

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    const-string v5, "getSender"

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lbh/e;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->k:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Messenger;

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->m:Landroid/os/Messenger;

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->n:Ljava/lang/Boolean;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->e:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, ""

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    :cond_4
    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    if-eqz p1, :cond_6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->k:Ljava/lang/String;

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    iget p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->i:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->k:Ljava/lang/String;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->j:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "applicationContext"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v2}, Lcom/miui/permcenter/AccessibilityServiceActivity;->l0(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    const/4 v2, -0x1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->n:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    invoke-direct {p0, p0, p1, v1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->o0(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-direct {p0, p0, p1, v0}, Lcom/miui/permcenter/AccessibilityServiceActivity;->o0(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    invoke-direct {p0, v2}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    invoke-direct {p0, p1, v0}, Lcom/miui/permcenter/AccessibilityServiceActivity;->l0(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0, v2}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void

    :cond_9
    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "componentName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->d:Ljava/lang/String;

    const-string v1, "calling package not found!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->i:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void
.end method

.method private final n0(I)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->m:Landroid/os/Messenger;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private final o0(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lxc/a;->c(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    return-void
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 1
    .param p1    # Lmiuix/appcompat/app/AlertDialog$Builder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "builder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->j:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->d:Ljava/lang/String;

    const-string v0, "createDialog: mCallingPackageInfo or applicationInfo is empty"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->i:I

    invoke-direct {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/permcenter/AccessibilityServiceActivity;->k0()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/permcenter/a;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/a;-><init>(Lcom/miui/permcenter/AccessibilityServiceActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f121b7b

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f121b7c    # 1.9421E38f

    invoke-virtual {p1, v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method protected f0()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/AccessibilityServiceActivity;->m0(Landroid/content/Intent;)V

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 1
    .param p1    # Lmiuix/appcompat/app/AlertDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    const/4 p2, 0x0

    invoke-direct {p0, p0, p1, p2}, Lcom/miui/permcenter/AccessibilityServiceActivity;->o0(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    iget p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->i:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/permcenter/AccessibilityServiceActivity;->l:Landroid/content/ComponentName;

    const/4 p2, 0x1

    invoke-direct {p0, p0, p1, p2}, Lcom/miui/permcenter/AccessibilityServiceActivity;->o0(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/permcenter/AccessibilityServiceActivity;->n0(I)V

    return-void
.end method
