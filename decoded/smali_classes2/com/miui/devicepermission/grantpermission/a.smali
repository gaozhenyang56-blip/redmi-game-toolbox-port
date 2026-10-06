.class public Lcom/miui/devicepermission/grantpermission/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/devicepermission/grantpermission/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Activity;

.field private c:Lmiuix/appcompat/app/AlertDialog;

.field private d:Ljava/lang/String;

.field private e:Ldc/c;

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/CharSequence;

.field private h:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->g:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    iput-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/miui/devicepermission/grantpermission/a;->f:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/devicepermission/grantpermission/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method private g(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->g:[Ljava/lang/CharSequence;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->g:[Ljava/lang/CharSequence;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->g:[Ljava/lang/CharSequence;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v1}, Ldc/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v2}, Ldc/c;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->f:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v1}, Ldc/c;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/devicepermission/grantpermission/a;->g:[Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-static {p3}, Ldc/d;->a(Ljava/lang/String;)Ldc/c;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {p0, p4}, Lcom/miui/devicepermission/grantpermission/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/miui/devicepermission/grantpermission/a$b;

    iget-object v2, p0, Lcom/miui/devicepermission/grantpermission/a;->b:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/devicepermission/grantpermission/a$b;-><init>(Landroid/app/Activity;Lcom/miui/devicepermission/grantpermission/a$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/miui/devicepermission/grantpermission/a;->c(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public e(Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;)Lcom/miui/devicepermission/grantpermission/a;
    .locals 0

    iput-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->h:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;

    return-object p0
.end method

.method public f(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->f(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/devicepermission/grantpermission/a$b;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->b:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/devicepermission/grantpermission/a$b;-><init>(Landroid/app/Activity;Lcom/miui/devicepermission/grantpermission/a$a;)V

    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/a;->b:Landroid/app/Activity;

    const v4, 0x7f130023

    invoke-direct {v1, v3, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v3}, Ldc/c;->e()I

    move-result v3

    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v4}, Ldc/c;->f()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setHapticFeedbackEnabled(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->e:Ldc/c;

    invoke-virtual {v0}, Ldc/c;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    :goto_0
    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    const v1, 0x7f120b74

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    const v3, 0x7f12110f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    const v3, 0x7f120b75

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->addButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    const v5, 0x7f121107

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->addPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableDialogImmersive(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v3}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p1, v6}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    const v0, 0x7f0b0094

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_1
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lx4/g;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07090f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/miui/devicepermission/grantpermission/a;->h(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->c:Lmiuix/appcompat/app/AlertDialog;

    invoke-direct {p0, p1}, Lcom/miui/devicepermission/grantpermission/a;->g(Lmiuix/appcompat/app/AlertDialog;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->h:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    const/4 v1, 0x4

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->h:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;

    iget-object v1, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;->C(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/devicepermission/grantpermission/a;->h:Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;

    iget-object v0, p0, Lcom/miui/devicepermission/grantpermission/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/miui/devicepermission/grantpermission/GrantDevicePermissionsViewHandler$a;->C(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
