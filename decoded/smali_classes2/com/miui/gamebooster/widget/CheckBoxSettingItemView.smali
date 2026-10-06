.class public Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;
    }
.end annotation


# static fields
.field private static m:I = 0x14


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/miui/gamebooster/widget/SwitchButton;

.field private d:Lmiuix/slidingwidget/widget/SlidingButton;

.field private e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;

.field private f:F

.field private g:F

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:J

.field private k:J

.field private l:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->f:F

    iput v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->g:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->j:J

    iput-wide v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->k:J

    invoke-direct {p0, p1, p2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lef/y;->p1:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p2, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    const/4 v7, 0x6

    invoke-virtual {p2, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {p2, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_1
    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move v7, v1

    move v0, v2

    move v6, v0

    move v8, v6

    :goto_0
    if-nez v0, :cond_2

    const p2, 0x7f0e01c9

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_1

    :cond_2
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_1
    const p1, 0x7f0b09be

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    if-eqz p1, :cond_f

    const p1, 0x7f0b0a2c

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const p1, 0x7f0b0b32

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz p2, :cond_3

    check-cast p1, Lcom/miui/gamebooster/widget/SwitchButton;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    goto :goto_2

    :cond_3
    instance-of p2, p1, Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p2, :cond_4

    check-cast p1, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lcom/miui/gamebooster/widget/SwitchButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    const p1, 0x7f0b0bc9

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->h:Landroid/widget/TextView;

    const p1, 0x7f0b0b17

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->i:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    if-eqz v4, :cond_9

    if-eqz v8, :cond_8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    :cond_8
    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->i:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_3
    if-eqz v5, :cond_c

    const p1, 0x7f0b0186

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget p2, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f071d71

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2, v0, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    :cond_c
    if-eqz v6, :cond_d

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object p2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    if-nez v7, :cond_e

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_e
    return-void

    :cond_f
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "The view which id is rootView can not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;Z)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public e(ZZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedNoEvent(Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediately(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/widget/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public f(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object p2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p2, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_0
    return-void
.end method

.method public getTouchUpEvent()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->l:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;->onCheckedChanged(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-wide v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->j:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x0

    if-lez p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->k:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->j:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->k:J

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->f:F

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->g:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->m:I

    int-to-float v3, v2

    cmpg-float p1, p1, v3

    if-gez p1, :cond_3

    int-to-float p1, v2

    cmpg-float p1, v1, p1

    if-gez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    :cond_3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->l:Landroid/view/MotionEvent;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->f:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->g:F

    :goto_0
    return v0
.end method

.method public setClickInterval(J)V
    .locals 0

    iput-wide p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->k:J

    return-void
.end method

.method public setEnabled(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/view/View;

    iget-object v2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->a:Landroid/view/View;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->c:Lcom/miui/gamebooster/widget/SwitchButton;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    aput-object v4, v1, v2

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v2, v1, v3

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;

    return-void
.end method

.method public setSlidingButtonClickInterval(J)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->d:Lmiuix/slidingwidget/widget/SlidingButton;

    instance-of v1, v0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;

    invoke-virtual {v0, p1, p2}, Lcom/miui/gamebooster/customview/SlidingButtonWithCoolTime;->setClickInterval(J)V

    :cond_0
    return-void
.end method

.method public setSubTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
