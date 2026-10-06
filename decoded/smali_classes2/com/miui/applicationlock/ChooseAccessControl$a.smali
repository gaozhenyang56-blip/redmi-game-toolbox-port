.class Lcom/miui/applicationlock/ChooseAccessControl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/miui/applicationlock/ChooseAccessControl$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl$a;->b(I)V

    return-void
.end method

.method private synthetic b(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->h0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->j0(Lcom/miui/applicationlock/ChooseAccessControl;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->k0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/e;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->k0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/e;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/applicationlock/widget/o;->d(Z)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->showKeyboard(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->l0(Lcom/miui/applicationlock/ChooseAccessControl;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    if-nez p2, :cond_0

    const-string v2, "pattern"

    :goto_0
    invoke-virtual {v1, v2}, Ld3/a;->p(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p2, v0, :cond_1

    const-string v2, "numeric"

    goto :goto_0

    :cond_1
    const-string v2, "mixed"

    goto :goto_0

    :goto_1
    :try_start_0
    invoke-static {}, Lx4/y1;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->g0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    const-wide/16 v4, 0x3c

    invoke-interface {v1, v4, v5}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    sget-object v6, Lmiuix/animation/IVisibleStyle$VisibleType;->HIDE:Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v6, v2, v3

    const/4 v7, 0x0

    invoke-interface {v1, v7, v2}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v2, v2, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1, v4, v5}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v6, v2, v3

    invoke-interface {v1, v7, v2}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v2, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v1, v2}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl$a;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->h0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-interface {v1, v4, v5}, Lmiuix/animation/IVisibleStyle;->setShowDelay(J)Lmiuix/animation/IVisibleStyle;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/IVisibleStyle$VisibleType;

    aput-object v6, v0, v3

    invoke-interface {v1, v7, v0}, Lmiuix/animation/IVisibleStyle;->setAlpha(F[Lmiuix/animation/IVisibleStyle$VisibleType;)Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IVisibleStyle;->setHide()Lmiuix/animation/IVisibleStyle;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {v0, v1}, Lmiuix/animation/IVisibleStyle;->show([Lmiuix/animation/base/AnimConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    const-string v0, "ChooseAccessControl"

    const-string v1, "not support folme"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/miui/applicationlock/b;

    invoke-direct {v0, p0, p2}, Lcom/miui/applicationlock/b;-><init>(Lcom/miui/applicationlock/ChooseAccessControl$a;I)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
