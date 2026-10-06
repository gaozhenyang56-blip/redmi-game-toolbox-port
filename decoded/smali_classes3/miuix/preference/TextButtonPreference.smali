.class public Lmiuix/preference/TextButtonPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmiuix/preference/TextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lmiuix/preference/k;->E:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/TextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lmiuix/preference/q;->c:I

    invoke-direct {p0, p1, p2, p3, v0}, Lmiuix/preference/TextButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lmiuix/preference/r;->q2:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x1010590

    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Lpl/d;->d(Landroid/content/Context;IZ)Z

    move-result p3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz p3, :cond_0

    sget p3, Lmiuix/preference/l;->b:I

    goto :goto_0

    :cond_0
    sget p3, Lmiuix/preference/l;->a:I

    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    sget p3, Lmiuix/preference/r;->r2:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lmiuix/preference/TextButtonPreference;->a:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    iput p1, p0, Lmiuix/preference/TextButtonPreference;->a:I

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget v1, p0, Lmiuix/preference/TextButtonPreference;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lmiuix/preference/TextButtonPreference;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method
