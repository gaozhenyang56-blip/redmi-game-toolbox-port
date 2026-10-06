.class public Lmiuix/appcompat/app/AdaptRoundButtonDrawable;
.super Lmiuix/smooth/SmoothContainerDrawable2;
.source "SourceFile"


# instance fields
.field private mCapsuleRadius:F

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    return-void
.end method

.method private init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1

    sget-object v0, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable:[I

    invoke-static {p1, p3, p2, v0}, Lmiuix/smooth/SmoothContainerDrawable2;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sget p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonRadius:I

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, p1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    sget p3, Lmiuix/appcompat/R$styleable;->AdaptRoundButtonDrawable_buttonCapsuleRadius:I

    const/high16 v0, 0x42100000    # 36.0f

    mul-float/2addr p1, v0

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRadius:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/xmlpull/v1/XmlPullParser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p3, p4}, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->init(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/smooth/SmoothContainerDrawable2;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    invoke-static {}, Lbl/l;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mRadius:F

    goto :goto_0

    :cond_0
    iget p1, p0, Lmiuix/appcompat/app/AdaptRoundButtonDrawable;->mCapsuleRadius:F

    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    return-void
.end method
