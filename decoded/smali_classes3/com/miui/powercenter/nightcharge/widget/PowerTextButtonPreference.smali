.class public Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;
.super Lmiuix/preference/TextButtonPreference;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040788

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/TextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private e(Z)V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1010590

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060888

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06087a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lmiuix/preference/TextButtonPreference;->d(I)V

    goto :goto_1

    :cond_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p1, v1, :cond_2

    invoke-static {v0}, Lae/a;->a(I)Landroid/graphics/Color;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {p1}, Lae/b;->a(Landroid/graphics/Color;)F

    move-result v1

    invoke-static {p1}, Lae/c;->a(Landroid/graphics/Color;)F

    move-result v2

    invoke-static {p1}, Lae/d;->a(Landroid/graphics/Color;)F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lae/e;->a(FFFF)I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/preference/TextButtonPreference;->d(I)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/nightcharge/widget/PowerTextButtonPreference;->e(Z)V

    return-void
.end method
