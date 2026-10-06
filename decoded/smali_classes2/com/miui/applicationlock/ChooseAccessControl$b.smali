.class Lcom/miui/applicationlock/ChooseAccessControl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/g;


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

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object p1, p1, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    const v0, 0x7f120cc8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->p0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->q0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->r0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc3/f;->g(Ljava/lang/String;)Z

    move-result v0

    iget-object v4, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v5, v4, Lcom/miui/applicationlock/ChooseAccessControl;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const v2, 0x7f120cb3

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-static {v4, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->i0(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$f;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v2}, Lcom/miui/applicationlock/ChooseAccessControl;->q0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sget v4, Lcom/miui/applicationlock/ChooseAccessControl;->q:I

    if-lt v0, v4, :cond_4

    move v1, v3

    :cond_4
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ld3/a;->m(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq v0, v2, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v4, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne v0, v4, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0, p1}, Ld3/a;->q(Landroid/text/Editable;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->q0(Lcom/miui/applicationlock/ChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    sget v4, Lcom/miui/applicationlock/ChooseAccessControl;->q:I

    if-lt p1, v4, :cond_7

    move v1, v3

    :cond_7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object p1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->n0(Lcom/miui/applicationlock/ChooseAccessControl;Lcom/miui/applicationlock/ChooseAccessControl$f;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-virtual {p1, v2}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAccessControl;->m0(Lcom/miui/applicationlock/ChooseAccessControl;)Lcom/miui/applicationlock/ChooseAccessControl$f;

    move-result-object v0

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->g:Lcom/miui/applicationlock/ChooseAccessControl$f;

    if-ne v0, v1, :cond_6

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/miui/applicationlock/ChooseAccessControl;->q:I

    if-ge v0, v1, :cond_2

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->g:Lcom/miui/applicationlock/ChooseAccessControl$f;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0, p1}, Ld3/a;->m(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->h:Lcom/miui/applicationlock/ChooseAccessControl$f;

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string p1, "ChooseAccessControl"

    const-string v0, "null choose pattern in stage \'need to confirm"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object v0, v0, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {v0}, Ld3/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    iget-object p1, p1, Lcom/miui/applicationlock/ChooseAccessControl;->l:Ld3/a;

    invoke-virtual {p1}, Ld3/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pattern"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    invoke-static {p1}, Lcom/miui/applicationlock/ChooseAccessControl;->o0(Lcom/miui/applicationlock/ChooseAccessControl;)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$b;->a:Lcom/miui/applicationlock/ChooseAccessControl;

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    :goto_1
    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/ChooseAccessControl;->L0(Lcom/miui/applicationlock/ChooseAccessControl$f;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public d(Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ChooseAccessControl$b;->e(Landroid/text/Editable;)V

    return-void
.end method
