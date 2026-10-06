.class public Lcom/miui/optimizemanage/view/StateCheckBox;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizemanage/view/StateCheckBox$c;,
        Lcom/miui/optimizemanage/view/StateCheckBox$b;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/optimizemanage/view/StateCheckBox$b;

.field private b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

.field private c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/optimizemanage/view/StateCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/widget/CheckBox;

    invoke-direct {p2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 p2, 0x9

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    const p2, 0x7f080dc3

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setButtonDrawable(I)V

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    invoke-direct {p0, p1, p2}, Lcom/miui/optimizemanage/view/StateCheckBox;->a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V

    return-void
.end method

.method private a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    iput-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    sget-object p2, Lcom/miui/optimizemanage/view/StateCheckBox$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getState()Lcom/miui/optimizemanage/view/StateCheckBox$c;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    sget-object v0, Lcom/miui/optimizemanage/view/StateCheckBox$c;->a:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    invoke-direct {p0, p1, v1}, Lcom/miui/optimizemanage/view/StateCheckBox;->a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/miui/optimizemanage/view/StateCheckBox$c;->c:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    if-ne p1, v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/miui/optimizemanage/view/StateCheckBox;->a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/miui/optimizemanage/view/StateCheckBox;->a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V

    :goto_0
    iget-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->a:Lcom/miui/optimizemanage/view/StateCheckBox$b;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->b:Lcom/miui/optimizemanage/view/StateCheckBox$c;

    invoke-interface {p1, p0, v0}, Lcom/miui/optimizemanage/view/StateCheckBox$b;->h(Landroid/view/View;Lcom/miui/optimizemanage/view/StateCheckBox$c;)V

    :cond_2
    return-void
.end method

.method public setCheckEnable(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->c:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/miui/optimizemanage/view/StateCheckBox$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/view/StateCheckBox;->a:Lcom/miui/optimizemanage/view/StateCheckBox$b;

    return-void
.end method

.method public setState(Lcom/miui/optimizemanage/view/StateCheckBox$c;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizemanage/view/StateCheckBox;->a(Lcom/miui/optimizemanage/view/StateCheckBox$c;Z)V

    return-void
.end method
