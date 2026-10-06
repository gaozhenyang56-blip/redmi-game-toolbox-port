.class public Lmiuix/preference/CheckBoxPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "SourceFile"


# instance fields
.field private g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iput-object p1, p0, Lmiuix/preference/CheckBoxPreference;->g:Landroid/view/View;

    return-void
.end method

.method protected onClick()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    iget-object v0, p0, Lmiuix/preference/CheckBoxPreference;->g:Landroid/view/View;

    if-eqz v0, :cond_0

    sget v1, Lmiuix/view/i;->A:I

    sget v2, Lmiuix/view/i;->f:I

    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->f(Landroid/view/View;II)Z

    :cond_0
    return-void
.end method
