.class public Lmiuix/internal/view/a;
.super Landroid/graphics/drawable/AnimatedStateListDrawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/internal/view/a$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lmiuix/internal/view/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiuix/internal/view/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiuix/internal/view/a;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    invoke-virtual {p0}, Lmiuix/internal/view/a;->a()Lmiuix/internal/view/a$a;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    return-void
.end method

.method protected constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lmiuix/internal/view/a$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable;-><init>()V

    if-eqz p3, :cond_3

    if-nez p1, :cond_0

    iget-object p1, p3, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p2, p3, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p3, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, p3, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    :cond_2
    iget-object p1, p3, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    check-cast p1, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    invoke-virtual {p0, p1}, Lmiuix/internal/view/a;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    iget-object p1, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    iget p2, p3, Lmiuix/internal/view/a$a;->b:I

    iput p2, p1, Lmiuix/internal/view/a$a;->b:I

    iget p2, p3, Lmiuix/internal/view/a$a;->c:I

    iput p2, p1, Lmiuix/internal/view/a$a;->c:I

    iget p2, p3, Lmiuix/internal/view/a$a;->d:I

    iput p2, p1, Lmiuix/internal/view/a$a;->d:I

    iget-boolean p2, p3, Lmiuix/internal/view/a$a;->j:Z

    iput-boolean p2, p1, Lmiuix/internal/view/a$a;->j:Z

    goto :goto_1

    :cond_3
    sget-object p1, Lmiuix/internal/view/a;->b:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "checkWidgetConstantState is null ,but it can\'t be null"

    invoke-static {p1, p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method protected a()Lmiuix/internal/view/a$a;
    .locals 1

    new-instance v0, Lmiuix/internal/view/a$a;

    invoke-direct {v0}, Lmiuix/internal/view/a$a;-><init>()V

    return-object v0
.end method

.method public canApplyTheme()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    return-object v0
.end method

.method protected setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/graphics/drawable/AnimatedStateListDrawable;->setConstantState(Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;)V

    iget-object v0, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/internal/view/a;->a()Lmiuix/internal/view/a$a;

    move-result-object v0

    iput-object v0, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/a;->a:Lmiuix/internal/view/a$a;

    iput-object p1, v0, Lmiuix/internal/view/a$a;->a:Landroid/graphics/drawable/Drawable$ConstantState;

    return-void
.end method
