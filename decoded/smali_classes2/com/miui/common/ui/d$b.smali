.class public Lcom/miui/common/ui/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/ui/d$b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/common/ui/d$b$a;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/common/ui/d$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/common/ui/d$b$a;-><init>(Landroid/content/Context;Lcom/miui/common/ui/d$a;)V

    iput-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput p2, p0, Lcom/miui/common/ui/d$b;->b:I

    return-void
.end method


# virtual methods
.method public a()Lcom/miui/common/ui/d;
    .locals 8

    new-instance v0, Lcom/miui/common/ui/d;

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    iget v2, p0, Lcom/miui/common/ui/d$b;->b:I

    invoke-direct {v0, v1, v2}, Lcom/miui/common/ui/d;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-boolean v1, v1, Lcom/miui/common/ui/d$b$a;->j:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-boolean v1, v1, Lcom/miui/common/ui/d$b$a;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->b:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget v1, v1, Lcom/miui/common/ui/d$b$a;->q:I

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setIcon(I)V

    :cond_3
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->l:Landroid/view/View;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v3, v1, Lcom/miui/common/ui/d$b$a;->d:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    const/4 v4, -0x1

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->e:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v3, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_5
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v3, v1, Lcom/miui/common/ui/d$b$a;->f:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    const/4 v4, -0x2

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->g:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v3, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v3, v1, Lcom/miui/common/ui/d$b$a;->h:Ljava/lang/CharSequence;

    if-eqz v3, :cond_7

    const/4 v4, -0x3

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v4, v3, v1}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_7
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->c:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_9

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->p:Ljava/lang/CharSequence;

    if-eqz v1, :cond_a

    :try_start_0
    const-class v1, Lmiuix/appcompat/app/AlertDialog;

    const-string v3, "mAlert"

    invoke-static {v0, v1, v3}, Lbh/f;->i(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "setCheckBox"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/CharSequence;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-boolean v6, v6, Lcom/miui/common/ui/d$b$a;->o:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v7

    iget-object v6, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v6, v6, Lcom/miui/common/ui/d$b$a;->p:Ljava/lang/CharSequence;

    aput-object v6, v4, v2

    invoke-static {v1, v3, v5, v4}, Lbh/f;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCheckBox fail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwitchFoldAutoDismissAlertDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-object v0
.end method

.method public b(Z)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-boolean p1, v0, Lcom/miui/common/ui/d$b$a;->j:Z

    return-object p0
.end method

.method public c(ZLjava/lang/String;)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p2, v0, Lcom/miui/common/ui/d$b$a;->p:Ljava/lang/CharSequence;

    iput-boolean p1, v0, Lcom/miui/common/ui/d$b$a;->o:Z

    return-object p0
.end method

.method public d(I)Lcom/miui/common/ui/d$b;
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v1, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object p1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    iput v0, p1, Lcom/miui/common/ui/d$b$a;->q:I

    return-object p0
.end method

.method public e(I)Lcom/miui/common/ui/d$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v0, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v0, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->f:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p2, p1, Lcom/miui/common/ui/d$b$a;->g:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public h(Landroid/content/DialogInterface$OnDismissListener;)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->n:Landroid/content/DialogInterface$OnDismissListener;

    return-object p0
.end method

.method public i(ILandroid/content/DialogInterface$OnClickListener;)Lcom/miui/common/ui/d$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v0, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->d:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p2, p1, Lcom/miui/common/ui/d$b$a;->e:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public j(I)Lcom/miui/common/ui/d$b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iget-object v1, v0, Lcom/miui/common/ui/d$b$a;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public k(Ljava/lang/CharSequence;)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l(Landroid/view/View;)Lcom/miui/common/ui/d$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/ui/d$b;->a:Lcom/miui/common/ui/d$b$a;

    iput-object p1, v0, Lcom/miui/common/ui/d$b$a;->l:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, v0, Lcom/miui/common/ui/d$b$a;->k:I

    return-object p0
.end method
