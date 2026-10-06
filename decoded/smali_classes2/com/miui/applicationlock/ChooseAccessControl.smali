.class public Lcom/miui/applicationlock/ChooseAccessControl;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/applicationlock/ChooseAccessControl$f;,
        Lcom/miui/applicationlock/ChooseAccessControl$e;,
        Lcom/miui/applicationlock/ChooseAccessControl$d;
    }
.end annotation


# static fields
.field public static q:I = 0x4


# instance fields
.field protected a:Landroid/widget/TextView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field protected e:Lc3/d;

.field private f:Landroid/app/AppOpsManager;

.field private g:Landroid/os/IBinder;

.field private h:Lcom/miui/applicationlock/widget/e;

.field private i:Landroid/view/accessibility/AccessibilityManager;

.field private j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

.field private k:Landroid/widget/TextView;

.field protected l:Ld3/a;

.field private m:Landroid/view/ViewGroup;

.field private n:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Lc3/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$a;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ChooseAccessControl$a;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->o:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$b;

    invoke-direct {v0, p0}, Lcom/miui/applicationlock/ChooseAccessControl$b;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->p:Lc3/g;

    return-void
.end method

.method private A0(ILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IIIILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$d;ILcom/miui/applicationlock/ChooseAccessControl$d;)V
    .locals 0

    sget-object p4, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p4, p1}, Lcom/miui/applicationlock/ChooseAccessControl$f;->a(I)V

    invoke-virtual {p4, p2}, Lcom/miui/applicationlock/ChooseAccessControl$f;->b(Lcom/miui/applicationlock/ChooseAccessControl$d;)V

    invoke-virtual {p4, p3}, Lcom/miui/applicationlock/ChooseAccessControl$f;->c(Lcom/miui/applicationlock/ChooseAccessControl$e;)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->g:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, p5}, Lcom/miui/applicationlock/ChooseAccessControl$f;->a(I)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->h:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, p6}, Lcom/miui/applicationlock/ChooseAccessControl$f;->a(I)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, p7}, Lcom/miui/applicationlock/ChooseAccessControl$f;->a(I)V

    invoke-virtual {p1, p8}, Lcom/miui/applicationlock/ChooseAccessControl$f;->b(Lcom/miui/applicationlock/ChooseAccessControl$d;)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, p9}, Lcom/miui/applicationlock/ChooseAccessControl$f;->b(Lcom/miui/applicationlock/ChooseAccessControl$d;)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, p10}, Lcom/miui/applicationlock/ChooseAccessControl$f;->a(I)V

    invoke-virtual {p1, p11}, Lcom/miui/applicationlock/ChooseAccessControl$f;->b(Lcom/miui/applicationlock/ChooseAccessControl$d;)V

    return-void
.end method

.method private B0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->C0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-virtual {v0}, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;->getUnlockView()Lcom/miui/applicationlock/widget/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->p:Lc3/g;

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/e;->setApplockUnlockCallback(Lc3/g;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/widget/e;->setLightMode(Z)V

    const v0, 0x7f0b01d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0b042b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    const v0, 0x7f0b042c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->F0()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private C0(Ljava/lang/String;)V
    .locals 13

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "numeric"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mixed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const v1, 0x7f10006d

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$d;->i:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$e;->h:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const v4, 0x7f120cca

    const v5, 0x7f10006c

    const v6, 0x7f120cc7

    const v7, 0x7f120cc4

    sget-object v11, Lcom/miui/applicationlock/ChooseAccessControl$d;->e:Lcom/miui/applicationlock/ChooseAccessControl$d;

    const v10, 0x7f120cc6

    move-object v0, p0

    move-object v8, v11

    move-object v9, v11

    invoke-direct/range {v0 .. v11}, Lcom/miui/applicationlock/ChooseAccessControl;->A0(ILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IIIILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$d;ILcom/miui/applicationlock/ChooseAccessControl$d;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f121620

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    const v2, 0x7f120e15

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$d;->f:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$e;->d:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const v5, 0x7f120e17

    const v6, 0x7f100077

    const v7, 0x7f120e14

    const v8, 0x7f120e11

    sget-object v12, Lcom/miui/applicationlock/ChooseAccessControl$d;->g:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120e12

    goto :goto_1

    :cond_1
    const p1, 0x7f120e13

    :goto_1
    move v11, p1

    move-object v1, p0

    move-object v9, v12

    move-object v10, v12

    invoke-direct/range {v1 .. v12}, Lcom/miui/applicationlock/ChooseAccessControl;->A0(ILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IIIILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$d;ILcom/miui/applicationlock/ChooseAccessControl$d;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12161b

    goto :goto_0

    :cond_2
    const v2, 0x7f120f3d

    sget-object v12, Lcom/miui/applicationlock/ChooseAccessControl$d;->f:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$e;->d:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const v5, 0x7f120f3f

    const v6, 0x7f10008a

    const v7, 0x7f120f3c

    const v8, 0x7f120f39

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f120f3a

    goto :goto_2

    :cond_3
    const p1, 0x7f120f3b

    :goto_2
    move v11, p1

    move-object v1, p0

    move-object v3, v12

    move-object v9, v12

    move-object v10, v12

    invoke-direct/range {v1 .. v12}, Lcom/miui/applicationlock/ChooseAccessControl;->A0(ILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IIIILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$d;ILcom/miui/applicationlock/ChooseAccessControl$d;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12161d

    goto/16 :goto_0

    :goto_3
    return-void
.end method

.method private static synthetic D0(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/util/TypedValue;)V
    .locals 2

    new-instance v0, Landroidx/constraintlayout/widget/e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e;-><init>()V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/e;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const v1, 0x7f0b0bf8

    invoke-virtual {v0, v1, p1}, Landroidx/constraintlayout/widget/e;->P(IF)V

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/e;->i(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private static synthetic E0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private G0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {v0}, Lcom/miui/applicationlock/widget/o;->a()V

    return-void
.end method

.method private H0(IZ)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->f:Landroid/app/AppOpsManager;

    const-string v1, "setUserRestriction"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/IBinder;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->g:Landroid/os/IBinder;

    aput-object p1, v2, v7

    invoke-static {v0, v1, v3, v2}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ChooseAccessControl"

    const-string v0, "restrictOpsWindow error"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private J0()V
    .locals 3

    const-string v0, "security"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v2}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiui/security/SecurityManager;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc3/d;->x(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, v0}, Lc3/f;->m0(JLandroid/content/Context;)V

    return-void
.end method

.method private K0()V
    .locals 5

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "numeric"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1202ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120499

    new-instance v4, Lz2/k;

    invoke-direct {v4}, Lz2/k;-><init>()V

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f03000a

    iget-object v4, p0, Lcom/miui/applicationlock/ChooseAccessControl;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, v3, v1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method public static synthetic d0(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/util/TypedValue;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->D0(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/util/TypedValue;)V

    return-void
.end method

.method public static synthetic e0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->E0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic f0(Lcom/miui/applicationlock/ChooseAccessControl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic g0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    return-object p0
.end method

.method public static hideKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method static synthetic i0(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$f;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->y0(Lcom/miui/applicationlock/ChooseAccessControl$f;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j0(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->B0()V

    return-void
.end method

.method static synthetic k0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/e;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->t0()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->K0()V

    return-void
.end method

.method static synthetic m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$f;)Lcom/miui/applicationlock/ChooseAccessControl$f;
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    return-object p1
.end method

.method static synthetic o0(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->z0()V

    return-void
.end method

.method static synthetic p0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic q0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic r0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method private s0()V
    .locals 4

    invoke-static {}, Lx4/y;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pattern"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070196

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070195

    :goto_0
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const v1, 0x7f0b0bf0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lz2/j;

    invoke-direct {v2, v1, v0}, Lz2/j;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/util/TypedValue;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public static showKeyboard(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private t0()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->s0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->v0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->w0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->u0()V

    return-void
.end method

.method private u0()V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->x0(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070199

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070198

    :goto_0
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v0, Landroidx/constraintlayout/widget/d;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/d;->d(F)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/d;->a()V

    return-void
.end method

.method private v0()V
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v2}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pattern"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f070197

    goto :goto_0

    :cond_0
    const v2, 0x7f070195

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v1, Landroidx/constraintlayout/widget/d;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/d;-><init>(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/d;->d(F)Landroidx/constraintlayout/widget/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/d;->a()V

    return-void
.end method

.method private w0()V
    .locals 5

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b0bf0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {}, La8/s1;->a()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->m:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const v2, 0x7f0b0442

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v2, 0x7f0b0add

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->m:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/ActionBar;->hide(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600d5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->m:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/ActionBar;->show(Z)V

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method private x0(Landroid/content/res/Configuration;)I
    .locals 4

    :try_start_0
    const-string v0, "windowConfiguration"

    invoke-static {p1, v0}, Lbh/f;->j(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "getWindowingMode"

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2, v3}, Lbh/f;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ChooseAccessControl"

    const-string v1, "onConfigurationChanged ex: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method private y0(Lcom/miui/applicationlock/ChooseAccessControl$f;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mixed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v6, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v6, v4, [Ljava/lang/Object;

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v6, "pattern"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v7, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    invoke-virtual {v0, p1, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget p1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private z0()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->g()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->g()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->I0()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->g()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v2}, Ld3/a;->g()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected F0()V
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    return-void
.end method

.method protected I0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->F0()V

    const-string v0, "ChooseAccessControl"

    const-string v1, "password is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v1}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->J0()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method protected L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V
    .locals 6

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->g:Lcom/miui/applicationlock/ChooseAccessControl$f;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v3, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v3, p0, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3, v0}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->y0(Lcom/miui/applicationlock/ChooseAccessControl$f;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    iget v3, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$d;->i:Lcom/miui/applicationlock/ChooseAccessControl$d;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    iget v3, v3, Lcom/miui/applicationlock/ChooseAccessControl$d;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    iget-boolean v3, v3, Lcom/miui/applicationlock/ChooseAccessControl$d;->b:Z

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_2
    iget-object v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    sget-object v3, Lcom/miui/applicationlock/ChooseAccessControl$e;->h:Lcom/miui/applicationlock/ChooseAccessControl$e;

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl$e;->a(Lcom/miui/applicationlock/ChooseAccessControl$e;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v4}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f120cce

    goto :goto_3

    :cond_4
    const v3, 0x7f120ccf

    :goto_3
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-static {v1}, Lcom/miui/applicationlock/ChooseAccessControl$e;->b(Lcom/miui/applicationlock/ChooseAccessControl$e;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_4
    iget-boolean p1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->e:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1, v2}, Lcom/miui/applicationlock/widget/o;->e(Z)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1, v2}, Lcom/miui/applicationlock/widget/o;->c(Z)V

    :goto_5
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->a:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/e;->setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$c;->a:[I

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1, v2}, Lcom/miui/applicationlock/widget/o;->c(Z)V

    goto :goto_7

    :pswitch_1
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1}, Lcom/miui/applicationlock/widget/o;->f()V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1, v2}, Lcom/miui/applicationlock/widget/o;->e(Z)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "change_set_password_again"

    goto :goto_6

    :cond_6
    const-string p1, "first_set_password_again"

    goto :goto_6

    :pswitch_2
    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1}, Lcom/miui/applicationlock/widget/o;->f()V

    goto :goto_7

    :pswitch_3
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    sget-object v0, Lcom/miui/applicationlock/widget/LockPatternView$c;->c:Lcom/miui/applicationlock/widget/LockPatternView$c;

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/e;->setDisplayMode(Lcom/miui/applicationlock/widget/LockPatternView$c;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->G0()V

    goto :goto_7

    :pswitch_4
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1}, Lcom/miui/applicationlock/widget/o;->f()V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "change_set_password"

    goto :goto_6

    :cond_7
    const-string p1, "first_set_password"

    :goto_6
    invoke-static {p1}, La3/a;->l(Ljava/lang/String;)V

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x37

    const/4 v1, -0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x38

    if-eq p1, v0, :cond_5

    const/16 v0, 0x78

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->e:Lc3/d;

    invoke-virtual {p1}, Lc3/d;->t()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ld3/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p3}, Lcom/miui/common/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ld3/a;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "ChooseAccessControl"

    const-string p2, "password is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->J0()V

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_2

    :cond_5
    if-ne p2, v1, :cond_9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_2

    :cond_7
    if-eq p2, v1, :cond_8

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_8
    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->c:Landroid/widget/TextView;

    const-string v1, "ChooseAccessControl"

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    iget-object p1, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$d;->e:Lcom/miui/applicationlock/ChooseAccessControl$d;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ld3/a;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->h:Lcom/miui/applicationlock/widget/e;

    invoke-interface {p1}, Lcom/miui/applicationlock/widget/o;->f()V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$d;->f:Lcom/miui/applicationlock/ChooseAccessControl$d;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$d;->g:Lcom/miui/applicationlock/ChooseAccessControl$d;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "left footer button pressed , but stage of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t make sense"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    :goto_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->i()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/miui/applicationlock/ChooseLockTypeActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "cancel_setting_password"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_3
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->d:Landroid/widget/TextView;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->n:Lcom/miui/applicationlock/ChooseAccessControl$f;

    iget-object v0, p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$e;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v3, " when button is "

    const-string v4, "expected ui stage "

    if-ne v0, v2, :cond_6

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->h:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq p1, v0, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$e;->e:Lcom/miui/applicationlock/ChooseAccessControl$e;

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq p1, v0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->I0()V

    goto :goto_3

    :cond_8
    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->z0()V

    :cond_9
    :goto_3
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->t0()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Ld3/a;->d(Landroidx/lifecycle/y0;)Ld3/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-static {}, Lx4/t;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/common/base/BaseActivity;->setNeedHorizontalPadding(Z)V

    :cond_0
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->f:Landroid/app/AppOpsManager;

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->i:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->g:Landroid/os/IBinder;

    const v0, 0x7f0e00f4

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/d;->j(Landroid/content/Context;)Lc3/d;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->e:Lc3/d;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "passwordType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ld3/a;->p(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1, v0}, Ld3/a;->p(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "external_app_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ld3/a;->k(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "extra_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "forgot_password_reset"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "setting_password_reset"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz p1, :cond_3

    const-string v3, "ModifyPassword"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    const v3, 0x7f120e24

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v3}, Ld3/a;->n(Ljava/lang/Boolean;)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$e;->e:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const v3, 0x7f120cc2

    invoke-virtual {p1, v3}, Lcom/miui/applicationlock/ChooseAccessControl$e;->c(I)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$e;->f:Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-virtual {p1, v3}, Lcom/miui/applicationlock/ChooseAccessControl$e;->c(I)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$e;->e:Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-static {}, Lx4/t;->p()Z

    move-result v3

    const v4, 0x7f1201c1

    const v5, 0x7f120ccd

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    invoke-virtual {p1, v3}, Lcom/miui/applicationlock/ChooseAccessControl$e;->c(I)V

    sget-object p1, Lcom/miui/applicationlock/ChooseAccessControl$e;->f:Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-static {}, Lx4/t;->p()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    invoke-virtual {p1, v4}, Lcom/miui/applicationlock/ChooseAccessControl$e;->c(I)V

    :goto_2
    const p1, 0x7f0b042d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->k:Landroid/widget/TextView;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v3}, Ld3/a;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v3}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0, p1}, Ld3/a;->j(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->k:Landroid/widget/TextView;

    new-instance v0, Lz2/i;

    invoke-direct {v0, p0}, Lz2/i;-><init>(Lcom/miui/applicationlock/ChooseAccessControl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    const p1, 0x7f0b0862

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->j:Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    const p1, 0x7f0b04d8

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->B0()V

    invoke-direct {p0}, Lcom/miui/applicationlock/ChooseAccessControl;->t0()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    const-string v0, "set_back"

    invoke-static {v0}, La3/a;->C(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/16 v0, 0x18

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->H0(IZ)V

    const/16 v0, 0x2d

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->H0(IZ)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v0, 0x18

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->H0(IZ)V

    const/16 v0, 0x2d

    invoke-direct {p0, v0, v1}, Lcom/miui/applicationlock/ChooseAccessControl;->H0(IZ)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->C0(Ljava/lang/String;)V

    return-void
.end method
