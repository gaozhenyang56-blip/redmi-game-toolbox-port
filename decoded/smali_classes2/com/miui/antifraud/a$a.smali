.class Lcom/miui/antifraud/a$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antifraud/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/miui/antifraud/a;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antifraud/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(ILandroid/widget/Button;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antifraud/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antifraud/a;

    invoke-static {v0}, Lcom/miui/antifraud/a;->f(Lcom/miui/antifraud/a;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12190a

    if-lez p3, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/miui/antifraud/a;->g(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-wide/16 p2, 0x3e8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {v0, p1, p3}, Lcom/miui/antifraud/a;->g(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/antifraud/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antifraud/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2710

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/antifraud/a;->e(Lcom/miui/antifraud/a;)I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/antifraud/a$a;->a(ILandroid/widget/Button;I)V

    :goto_0
    return-void
.end method
