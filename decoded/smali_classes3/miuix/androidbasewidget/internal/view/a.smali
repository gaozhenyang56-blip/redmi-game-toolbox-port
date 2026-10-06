.class public Lmiuix/androidbasewidget/internal/view/a;
.super Landroid/graphics/drawable/GradientDrawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x18
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/androidbasewidget/internal/view/a$a;
    }
.end annotation


# instance fields
.field protected a:Lmiuix/androidbasewidget/internal/view/a$a;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/a;->b:I

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/a;->c:I

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/a;->a()Lmiuix/androidbasewidget/internal/view/a$a;

    move-result-object v0

    iput-object v0, p0, Lmiuix/androidbasewidget/internal/view/a;->a:Lmiuix/androidbasewidget/internal/view/a$a;

    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/androidbasewidget/internal/view/a$a;->b(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/androidbasewidget/internal/view/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/a;->b:I

    iput v0, p0, Lmiuix/androidbasewidget/internal/view/a;->c:I

    if-nez p1, :cond_0

    iget-object p1, p3, Lmiuix/androidbasewidget/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p3, Lmiuix/androidbasewidget/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lmiuix/androidbasewidget/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p3, Lmiuix/androidbasewidget/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/a;->a()Lmiuix/androidbasewidget/internal/view/a$a;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/internal/view/a;->a:Lmiuix/androidbasewidget/internal/view/a$a;

    iget-object p3, p3, Lmiuix/androidbasewidget/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p3}, Lmiuix/androidbasewidget/internal/view/a$a;->b(Landroid/graphics/drawable/Drawable$ConstantState;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/a;->b:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lmiuix/androidbasewidget/internal/view/a;->c:I

    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-static {p1}, Luk/b;->a(Landroid/graphics/drawable/GradientDrawable;)F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-static {p1}, Luk/c;->a(Landroid/graphics/drawable/GradientDrawable;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p1}, Luk/d;->a(Landroid/graphics/drawable/GradientDrawable;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected a()Lmiuix/androidbasewidget/internal/view/a$a;
    .locals 1

    new-instance v0, Lmiuix/androidbasewidget/internal/view/a$a;

    invoke-direct {v0}, Lmiuix/androidbasewidget/internal/view/a$a;-><init>()V

    return-object v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lmiuix/androidbasewidget/internal/view/a;->a:Lmiuix/androidbasewidget/internal/view/a$a;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/a;->c:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lmiuix/androidbasewidget/internal/view/a;->b:I

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6

    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget v4, p1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/a;->b()V

    :cond_2
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lmiuix/androidbasewidget/internal/view/a;->c()V

    :cond_3
    return v0
.end method
