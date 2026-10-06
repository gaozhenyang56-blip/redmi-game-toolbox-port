.class Lcom/miui/applicationlock/ConfirmAccessControl$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "o"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/ConfirmAccessControl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$o;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ConfirmAccessControl"

    const-string v2, " restartFaceUnlock "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->O0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->Q0(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {}, Lx4/y;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->R0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->T0(Lcom/miui/applicationlock/ConfirmAccessControl;)Lcom/miui/applicationlock/widget/PasswordUnlockMediator;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12084a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "ConfirmAccessControl"

    const-string v1, "onFaceAuthenticated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Laf/a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->K2()V

    return-void
.end method

.method public c()V
    .locals 2

    const-string v0, "ConfirmAccessControl"

    const-string v1, " onFaceLocked "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onFaceHelp tip:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "helpCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Laf/a;->a(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0xbb9

    if-ne v1, p2, :cond_2

    :cond_1
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object p2

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    :cond_2
    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "omFaceAuthFailed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmAccessControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->K0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120ccb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->I0(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->M0(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {p1}, Lc3/f;->H(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12006c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->N0(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lc3/f;->x0(Landroid/view/View;)V

    return-void
.end method

.method public f()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$o;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ConfirmAccessControl"

    const-string v2, " onFaceStart "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->P0(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f12084a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
