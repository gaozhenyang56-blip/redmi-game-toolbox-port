.class public final Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cancleCallBack:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private confirmCallBack:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final countMax:I

.field private final inflate:Landroid/view/View;

.field private mContent:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mTitle:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tmpCount:I

.field private tv_content:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tv_title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view_cancel:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private view_confirm:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mContent:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->cancleCallBack:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->confirmCallBack:Ljava/lang/Runnable;

    const-string p1, "BH-FirstOrFaultPurchaseDialog"

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->TAG:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mHandler:Landroid/os/Handler;

    const/16 p1, 0xa

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->countMax:I

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0e00b7

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    const p2, 0x7f0b0d82

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "it.findViewById(R.id.view_cancel)"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_cancel:Landroid/widget/TextView;

    const p2, 0x7f0b0d85

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "it.findViewById(R.id.view_confirm)"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    const p2, 0x7f0b0c55

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "it.findViewById(R.id.tv_content)"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_content:Landroid/widget/TextView;

    const p2, 0x7f0b0cf3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "it.findViewById(R.id.tv_title)"

    invoke-static {p2, p3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_title:Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->inflate:Landroid/view/View;

    return-void
.end method

.method public static synthetic e(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->flushText$lambda$3(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V

    return-void
.end method

.method public static synthetic f(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->onCreate$lambda$2(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final flushText$lambda$3(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->flushText()V

    :cond_0
    return-void
.end method

.method public static synthetic g(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->onCreate$lambda$1(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->cancleCallBack:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->confirmCallBack:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->countMax:I

    iput v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public final flushText()V
    .locals 7

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/networkassistant/ui/dialog/f;

    invoke-direct {v1, p0}, Lcom/miui/networkassistant/ui/dialog/f;-><init>(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f121759

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v1, v6

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080483

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120f48

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080482

    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public final getCancleCallBack()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->cancleCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getConfirmCallBack()Ljava/lang/Runnable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->confirmCallBack:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final getCountMax()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->countMax:I

    return v0
.end method

.method public final getInflate()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->inflate:Landroid/view/View;

    return-object v0
.end method

.method public final getMContent()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public final getMTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final getTmpCount()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    return v0
.end method

.method public final getTv_content()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_content:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTv_title()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_title:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getView_cancel()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_cancel:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getView_confirm()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_cancel:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/g;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/g;-><init>(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/h;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/h;-><init>(Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mTitle:Ljava/lang/CharSequence;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_content:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mContent:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_content:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public final setCancleCallBack(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->cancleCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method public final setConfirmCallBack(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->confirmCallBack:Ljava/lang/Runnable;

    return-void
.end method

.method public final setMContent(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mContent:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setMTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public final setTmpCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tmpCount:I

    return-void
.end method

.method public final setTv_content(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_content:Landroid/widget/TextView;

    return-void
.end method

.method public final setTv_title(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->tv_title:Landroid/widget/TextView;

    return-void
.end method

.method public final setView_cancel(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_cancel:Landroid/widget/TextView;

    return-void
.end method

.method public final setView_confirm(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->view_confirm:Landroid/widget/TextView;

    return-void
.end method

.method public show()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/AlertDialog;->show()V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/dialog/SecondCountDialog;->flushText()V

    return-void
.end method
