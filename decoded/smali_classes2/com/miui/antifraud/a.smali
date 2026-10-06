.class public Lcom/miui/antifraud/a;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/antifraud/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/miui/antifraud/a$a;

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f130455

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/antifraud/a;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antifraud/a;->e:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0e04bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/antifraud/a;->a:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    new-instance p1, Lcom/miui/antifraud/a$a;

    invoke-direct {p1, p0}, Lcom/miui/antifraud/a$a;-><init>(Lcom/miui/antifraud/a;)V

    iput-object p1, p0, Lcom/miui/antifraud/a;->c:Lcom/miui/antifraud/a$a;

    invoke-direct {p0}, Lcom/miui/antifraud/a;->n()V

    return-void
.end method

.method static synthetic e(Lcom/miui/antifraud/a;)I
    .locals 2

    iget v0, p0, Lcom/miui/antifraud/a;->d:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/antifraud/a;->d:I

    return v0
.end method

.method static synthetic f(Lcom/miui/antifraud/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/antifraud/a;->e:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/antifraud/a;->i(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static i(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-lez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f10013c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p1, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antifraud/a;->a:Landroid/view/View;

    const v1, 0x7f0b0313

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antifraud/a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/antifraud/a;->e:Landroid/content/Context;

    const v2, 0x7f12190c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/antifraud/a;->k(Z)V

    return-void
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/miui/antifraud/a;->d:I

    return v0
.end method

.method public j(IZ)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/antifraud/a;->c:Lcom/miui/antifraud/a$a;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    iput p1, p0, Lcom/miui/antifraud/a;->d:I

    iget-object p1, p0, Lcom/miui/antifraud/a;->c:Lcom/miui/antifraud/a$a;

    const-wide/16 v2, 0xc8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public k(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/antifraud/a;->c:Lcom/miui/antifraud/a$a;

    if-eqz p1, :cond_0

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/antifraud/a;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/miui/antifraud/a;->i(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lmiuix/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public m(IIZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/antifraud/a;->e:Landroid/content/Context;

    invoke-static {p1}, Lbl/c;->s(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p0, p2, p3}, Lcom/miui/antifraud/a;->j(IZ)V

    return-void
.end method
