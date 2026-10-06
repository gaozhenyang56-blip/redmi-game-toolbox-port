.class public Lmiuix/androidbasewidget/widget/PasswordWidgetManager;
.super Lmiuix/androidbasewidget/widget/f$a;
.source "SourceFile"


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mIsChecked:Z

.field private mMaster:Lmiuix/androidbasewidget/widget/f;

.field private mWidgetDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmiuix/androidbasewidget/widget/f$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    sget p2, Ltk/a;->b:I

    invoke-static {p1, p2}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p2, :cond_1

    const p2, 0x1010590

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Ltk/d;->b:I

    goto :goto_0

    :cond_0
    sget p2, Ltk/d;->a:I

    :goto_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->e(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method


# virtual methods
.method public getWidgetDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public onAttached(Lmiuix/androidbasewidget/widget/f;)V
    .locals 1

    iput-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_1
    return-void
.end method

.method protected onDetached()V
    .locals 2

    invoke-super {p0}, Lmiuix/androidbasewidget/widget/f$a;->onDetached()V

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method public onWidgetClick(I)V
    .locals 3

    iget-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    iget-boolean v2, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTextDirection(I)V

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mMaster:Lmiuix/androidbasewidget/widget/f;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->setSelection(II)V

    :cond_1
    iget-object p1, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mWidgetDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->mIsChecked:Z

    if-eqz v0, :cond_2

    sget-object v0, Lmiuix/androidbasewidget/widget/PasswordWidgetManager;->CHECKED_STATE_SET:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method
