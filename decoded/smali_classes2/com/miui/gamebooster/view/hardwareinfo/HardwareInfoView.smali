.class public Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lm8/b;
.implements Ln8/a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Lm8/c;

.field private g:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->g:Landroid/util/Pair;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->h:Z

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->e(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->f()V

    return-void
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->e:Landroid/content/Context;

    const v0, 0x7f0e0237

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b02b6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->a:Landroid/widget/TextView;

    const v0, 0x7f0b0491

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->b:Landroid/widget/TextView;

    const v0, 0x7f0b0492

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->c:Landroid/view/View;

    const v0, 0x7f0b02b7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->d:Landroid/view/View;

    invoke-static {}, La8/k2;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    const v2, 0x7f0b0aef

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0b037c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lc7/c;->F([Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private synthetic f()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v1, :cond_0

    return-void

    :cond_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private g(Landroid/util/Pair;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->c:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->c:Landroid/view/View;

    invoke-static {p2}, Lc7/c;->E(Landroid/view/View;)V

    iget-object p2, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->d:Landroid/view/View;

    new-instance v0, Lm8/a;

    invoke-direct {v0, p0}, Lm8/a;-><init>(Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;)V

    invoke-static {p2, v0}, Lc7/c;->b(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->c(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->c(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->f:Lm8/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm8/c;->d()V

    :cond_0
    new-instance v0, Lm8/c;

    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lm8/c;-><init>(Lm8/b;Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->f:Lm8/c;

    invoke-virtual {v0}, Lm8/c;->f()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->h:Z

    iget-object v1, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->g:Landroid/util/Pair;

    invoke-direct {p0, v1, v0}, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->g(Landroid/util/Pair;Z)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->f:Lm8/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm8/c;->d()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 6
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-static {}, Lc7/c;->l()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "hardware::cpu: %s, gpu: %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc7/b;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->a:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "%2d%%"

    invoke-static {v0, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->h:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->b:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/view/hardwareinfo/HardwareInfoView;->g:Landroid/util/Pair;

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method
