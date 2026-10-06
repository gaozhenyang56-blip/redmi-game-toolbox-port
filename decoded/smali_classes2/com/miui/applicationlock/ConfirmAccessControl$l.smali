.class Lcom/miui/applicationlock/ConfirmAccessControl$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc3/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
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

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$l;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Lcom/miui/applicationlock/ConfirmAccessControl$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl$l;-><init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationSucceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConfirmAccessControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->h1(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, v2}, Lcom/miui/applicationlock/ConfirmAccessControl;->i1(Lcom/miui/applicationlock/ConfirmAccessControl;Z)V

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->j1(Lcom/miui/applicationlock/ConfirmAccessControl;)Lc3/n;

    move-result-object v0

    invoke-virtual {v0}, Lc3/n;->d()V

    invoke-static {p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->k1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1, v1}, Lc3/f;->j0(Landroid/content/Context;Z)V

    return-void

    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAuthenticationSucceeded:  (confirmAccessControl == null) = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(I)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticationFailed helpCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAccessControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccessControl$l;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Laf/a;->a(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->h1(Lcom/miui/applicationlock/ConfirmAccessControl;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    if-ne p1, v2, :cond_1

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->l1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    return-void

    :cond_1
    invoke-static {v0}, Lc3/f;->H(Landroid/content/Context;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Lc3/f;->v0(Landroid/content/Context;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAuthenticationFailed fingerprintCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->u0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->v0(Lcom/miui/applicationlock/ConfirmAccessControl;)I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    if-ge p1, v2, :cond_2

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->w0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/TextView;

    move-result-object p1

    const v1, 0x7f120cc0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-static {p1}, Lc3/f;->x0(Landroid/view/View;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->x0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lc3/f;->c0(Landroid/view/accessibility/AccessibilityManager;Ljava/lang/String;)V

    invoke-static {v0}, Lc3/f;->t0(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->y0(Lcom/miui/applicationlock/ConfirmAccessControl;I)I

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->l1(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->z0(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->L2()V

    :cond_3
    :goto_0
    return-void
.end method
