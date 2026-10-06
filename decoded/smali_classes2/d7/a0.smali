.class public Ld7/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/view/WindowManager;

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/view/View;

.field private e:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ld7/a0;->j:Z

    iput-object p1, p0, Ld7/a0;->a:Landroid/content/Context;

    iput-object p2, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    invoke-virtual {p0}, Ld7/a0;->c()V

    return-void
.end method

.method public static synthetic a(Ld7/a0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ld7/a0;->f(Landroid/view/View;)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Ld7/a0;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0538

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ld7/a0;->d:Landroid/view/View;

    const v1, 0x7f0b0ce9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Ld7/a0;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Ld7/a0;->d:Landroid/view/View;

    const v1, 0x7f0b0cea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld7/a0;->f:Landroid/widget/TextView;

    iget-object v0, p0, Ld7/a0;->d:Landroid/view/View;

    const v1, 0x7f0b0ceb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld7/a0;->g:Landroid/widget/TextView;

    iget-object v0, p0, Ld7/a0;->d:Landroid/view/View;

    const v1, 0x7f0b0ca2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ld7/a0;->h:Landroid/widget/TextView;

    iget-object v0, p0, Ld7/a0;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Ld7/a0;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Ld7/a0;->g()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;Z)V
    .locals 8

    const-string v0, "TheatreGuide"

    if-eqz p1, :cond_5

    iget-boolean v1, p0, Ld7/a0;->j:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-object p1, p0, Ld7/a0;->i:Landroid/view/View;

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anchor position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v5, v1, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    aget v2, v1, v3

    if-lez v2, :cond_4

    aget v2, v1, v4

    if-gtz v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v2

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v2, v5}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v5

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v6, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    aget v7, v1, v3

    sub-int/2addr v7, v2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    aget v1, v1, v4

    sub-int/2addr v1, v5

    iput v1, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v1, 0x8

    iget-object v2, p0, Ld7/a0;->f:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Ld7/a0;->g:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Ld7/a0;->g:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, La8/k2;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Ld7/a0;->h:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v3, p0, Ld7/a0;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, La8/k2;->u()I

    move-result v2

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Ld7/a0;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/view/View;->measure(II)V

    iget-object v2, p0, Ld7/a0;->f:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v1, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x800033

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    if-nez v1, :cond_3

    iget-object v1, p0, Ld7/a0;->a:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    :cond_3
    iget-object v1, p0, Ld7/a0;->d:Landroid/view/View;

    new-instance v2, Ld7/z;

    invoke-direct {v2, p0}, Ld7/z;-><init>(Ld7/a0;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v1}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Ld7/a0;->d:Landroid/view/View;

    iget-object v2, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {v4}, Li8/c;->B0(Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show theatre guide ! isLeft : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", x = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", y = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    iget p2, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "anchor view is null! or panel is removed : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Ld7/a0;->j:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public c()V
    .locals 0

    invoke-virtual {p0}, Ld7/a0;->e()V

    invoke-direct {p0}, Ld7/a0;->d()V

    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7ea

    const/16 v1, 0x7f6
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const v1, 0x10702

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0}, Ls8/y;->a(Landroid/view/WindowManager$LayoutParams;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Ld7/a0;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ld7/a0;->j:Z

    iget-object v0, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ld7/a0;->d:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Ld7/a0;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ld7/a0;->b:Landroid/view/WindowManager;

    iput-object v0, p0, Ld7/a0;->d:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove guideView error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TheatreGuide"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
