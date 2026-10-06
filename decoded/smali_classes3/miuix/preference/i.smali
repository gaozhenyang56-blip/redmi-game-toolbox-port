.class Lmiuix/preference/i;
.super Landroidx/preference/c;
.source "SourceFile"

# interfaces
.implements Lmiuix/animation/internal/BlinkStateObserver;
.implements Lyk/a;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/i$f;
    }
.end annotation


# static fields
.field private static final K:[I

.field private static final L:[I

.field private static final M:[I

.field private static final N:[I

.field private static final O:[I

.field private static final P:[I

.field private static final Q:[I


# instance fields
.field public A:I

.field public B:I

.field private C:Z

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/graphics/Paint;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private g:[Lmiuix/preference/i$f;

.field private final h:Landroidx/recyclerview/widget/RecyclerView$j;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroidx/recyclerview/widget/RecyclerView;

.field private o:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private p:Lmiuix/animation/controller/FolmeBlink;

.field private q:I

.field private r:I

.field private s:Landroid/view/View;

.field private t:Z

.field private u:Landroid/view/View$OnTouchListener;

.field private v:Landroidx/recyclerview/widget/RecyclerView$r;

.field private w:Landroid/view/View$OnTouchListener;

.field private x:Z

.field private y:Landroidx/preference/Preference;

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a3

    aput v2, v0, v1

    const/4 v3, 0x1

    const v4, 0x10100a4

    aput v4, v0, v3

    const/4 v5, 0x2

    const v6, 0x10100a5

    aput v6, v0, v5

    const/4 v5, 0x3

    const v7, 0x10100a6

    aput v7, v0, v5

    sget v5, Lmiuix/preference/k;->B:I

    const/4 v8, 0x4

    aput v5, v0, v8

    sget v8, Lmiuix/preference/k;->A:I

    const/4 v9, 0x5

    aput v8, v0, v9

    sput-object v0, Lmiuix/preference/i;->K:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    new-array v0, v3, [I

    aput v2, v0, v1

    sput-object v0, Lmiuix/preference/i;->L:[I

    new-array v0, v3, [I

    aput v4, v0, v1

    sput-object v0, Lmiuix/preference/i;->M:[I

    new-array v0, v3, [I

    aput v6, v0, v1

    sput-object v0, Lmiuix/preference/i;->N:[I

    new-array v0, v3, [I

    aput v7, v0, v1

    sput-object v0, Lmiuix/preference/i;->O:[I

    new-array v0, v3, [I

    aput v5, v0, v1

    sput-object v0, Lmiuix/preference/i;->P:[I

    new-array v0, v3, [I

    aput v8, v0, v1

    sput-object v0, Lmiuix/preference/i;->Q:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;Z)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/c;-><init>(Landroidx/preference/PreferenceGroup;)V

    new-instance v0, Lmiuix/preference/i$a;

    invoke-direct {v0, p0}, Lmiuix/preference/i$a;-><init>(Lmiuix/preference/i;)V

    iput-object v0, p0, Lmiuix/preference/i;->h:Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/preference/i;->j:I

    iput v0, p0, Lmiuix/preference/i;->q:I

    const/4 v1, -0x1

    iput v1, p0, Lmiuix/preference/i;->r:I

    const/4 v1, 0x0

    iput-object v1, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    iput-boolean v0, p0, Lmiuix/preference/i;->t:Z

    iput-object v1, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    iput-object v1, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    new-instance v1, Lmiuix/preference/i$b;

    invoke-direct {v1, p0}, Lmiuix/preference/i$b;-><init>(Lmiuix/preference/i;)V

    iput-object v1, p0, Lmiuix/preference/i;->w:Landroid/view/View$OnTouchListener;

    iput-boolean v0, p0, Lmiuix/preference/i;->x:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iput v0, p0, Lmiuix/preference/i;->A:I

    iput v0, p0, Lmiuix/preference/i;->B:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lmiuix/preference/i;->I(Landroidx/preference/PreferenceGroup;Z)V

    return-void
.end method

.method static synthetic A(Lmiuix/preference/i;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic B(Lmiuix/preference/i;Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i;->o:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object p1
.end method

.method private E(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/Preference;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private H(Landroidx/preference/Preference;I)I
    .locals 7

    if-ltz p2, :cond_1

    iget-object v0, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    aget-object v1, v0, p2

    if-nez v1, :cond_0

    new-instance v1, Lmiuix/preference/i$f;

    invoke-direct {v1, p0}, Lmiuix/preference/i$f;-><init>(Lmiuix/preference/i;)V

    aput-object v1, v0, p2

    :cond_0
    iget-object v0, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/i$f;->a:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lmiuix/preference/i;->E(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    instance-of v2, p1, Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    instance-of v2, v0, Landroidx/preference/PreferenceScreen;

    if-nez v2, :cond_4

    instance-of v2, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v2, :cond_3

    instance-of v2, v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-nez v2, :cond_3

    instance-of v0, v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v0, :cond_5

    :cond_3
    invoke-direct {p0, p1}, Lmiuix/preference/i;->M(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    sget-object p1, Lmiuix/preference/i;->L:[I

    iget-object v0, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object p2, v0, p2

    iput-object p1, p2, Lmiuix/preference/i$f;->a:[I

    iput v3, p2, Lmiuix/preference/i$f;->b:I

    return v3

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v3, :cond_6

    sget-object v0, Lmiuix/preference/i;->L:[I

    move v1, v3

    goto :goto_1

    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lmiuix/preference/i;->M:[I

    const/4 v1, 0x2

    goto :goto_1

    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lmiuix/preference/i;->O:[I

    const/4 v1, 0x4

    goto :goto_1

    :cond_8
    sget-object v0, Lmiuix/preference/i;->N:[I

    const/4 v1, 0x3

    :goto_1
    instance-of v4, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_e

    check-cast p1, Landroidx/preference/PreferenceCategory;

    instance-of v4, p1, Lmiuix/preference/PreferenceCategory;

    if-eqz v4, :cond_a

    check-cast p1, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->e()Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->d()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    move v4, v2

    :goto_2
    if-nez v4, :cond_b

    if-eqz v3, :cond_e

    :cond_b
    if-eqz v4, :cond_c

    sget-object p1, Lmiuix/preference/i;->Q:[I

    array-length v4, p1

    new-array v4, v4, [I

    array-length v5, p1

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_c
    new-array v4, v2, [I

    :goto_3
    if-eqz v3, :cond_d

    sget-object p1, Lmiuix/preference/i;->P:[I

    array-length v3, p1

    new-array v3, v3, [I

    array-length v5, p1

    invoke-static {p1, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_d
    new-array v3, v2, [I

    :goto_4
    array-length p1, v4

    array-length v5, v3

    add-int/2addr p1, v5

    array-length v5, v0

    add-int/2addr p1, v5

    new-array p1, p1, [I

    array-length v5, v4

    invoke-static {v4, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v4

    array-length v6, v3

    invoke-static {v3, v2, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v3, v3

    add-int/2addr v4, v3

    array-length v3, v0

    invoke-static {v0, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_e
    iget-object p1, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object p1, p1, p2

    iput-object v0, p1, Lmiuix/preference/i$f;->a:[I

    iput v1, p1, Lmiuix/preference/i$f;->b:I

    :cond_f
    iget-object p1, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object p1, p1, p2

    iget p1, p1, Lmiuix/preference/i$f;->b:I

    return p1
.end method

.method private I(Landroidx/preference/PreferenceGroup;Z)V
    .locals 0

    iput-boolean p2, p0, Lmiuix/preference/i;->C:Z

    invoke-virtual {p0}, Landroidx/preference/c;->getItemCount()I

    move-result p2

    new-array p2, p2, [Lmiuix/preference/i$f;

    iput-object p2, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->J(Landroid/content/Context;)V

    return-void
.end method

.method private K(Landroidx/preference/Preference;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$d;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_2

    :cond_0
    instance-of p1, p1, Landroidx/preference/DialogPreference;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private M(Landroidx/preference/Preference;)Z
    .locals 2

    iget-boolean v0, p0, Lmiuix/preference/i;->C:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v1, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v1, :cond_0

    instance-of v1, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v1, :cond_0

    check-cast v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioButtonPreferenceCategory;->k()Z

    move-result p1

    return p1

    :cond_0
    instance-of v1, v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-eqz v1, :cond_1

    instance-of v1, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz v1, :cond_1

    check-cast v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/SingleChoicePreferenceCategory;->o()Z

    move-result p1

    return p1

    :cond_1
    instance-of v1, v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v1, :cond_2

    instance-of p1, p1, Lmiuix/preference/MultiChoicePreference;

    if-eqz p1, :cond_2

    check-cast v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/MultiChoicePreferenceCategory;->i()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private N(ILandroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-boolean p1, p0, Lmiuix/preference/i;->C:Z

    if-eqz p1, :cond_0

    instance-of p1, p2, Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_0

    invoke-direct {p0, p2}, Lmiuix/preference/i;->O(Landroidx/preference/Preference;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    instance-of p1, p2, Lmiuix/preference/RadioButtonPreference;

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    instance-of p1, p1, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private O(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Lmiuix/preference/j;

    if-eqz v0, :cond_0

    check-cast p1, Lmiuix/preference/j;

    invoke-interface {p1}, Lmiuix/preference/j;->c()Z

    move-result p1

    return p1

    :cond_0
    iget-boolean p1, p0, Lmiuix/preference/i;->C:Z

    return p1
.end method

.method private synthetic P(Landroidx/preference/h;I)V
    .locals 3

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/miui/support/drawable/CardStateDrawable;

    iget v2, p0, Lmiuix/preference/i;->J:I

    invoke-virtual {v1, v2, p2}, Lcom/miui/support/drawable/CardStateDrawable;->g(II)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private U(ILandroidx/preference/Preference;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-le v0, v2, :cond_1

    :cond_0
    iget-object p1, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p1, v1}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(F)Lmiuix/animation/IBlinkStyle;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lmiuix/preference/i;->N(ILandroidx/preference/Preference;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget p1, p0, Lmiuix/preference/i;->J:I

    int-to-float v1, p1

    :cond_2
    move p1, v1

    move p2, p1

    move v0, p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    iget p1, p0, Lmiuix/preference/i;->J:I

    int-to-float p1, p1

    move p2, v1

    move v0, p2

    move v1, p1

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    if-ne p1, p2, :cond_2

    iget p1, p0, Lmiuix/preference/i;->J:I

    int-to-float p1, p1

    move p2, p1

    move v0, p2

    move p1, v1

    :goto_0
    iget-object v2, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {v2, v1, p1, p2, v0}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(FFFF)Lmiuix/animation/IBlinkStyle;

    :goto_1
    return-void
.end method

.method private W(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z
    .locals 6

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CardView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    :cond_0
    instance-of v0, p3, Lmiuix/preference/j;

    if-eqz v0, :cond_1

    check-cast p3, Lmiuix/preference/j;

    invoke-interface {p3}, Lmiuix/preference/j;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p2, v1}, Lcom/miui/support/drawable/CardStateDrawable;->f(I)V

    goto :goto_0

    :cond_1
    iget p3, p0, Lmiuix/preference/i;->m:I

    invoke-virtual {p2, p3}, Lcom/miui/support/drawable/CardStateDrawable;->f(I)V

    :goto_0
    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/miui/support/drawable/CardStateDrawable;->d(IIII)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private Y(Landroid/view/View;ILandroidx/preference/Preference;)V
    .locals 3

    sget v0, Lmiuix/preference/o;->l:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeBlink;

    iput-object v0, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lmiuix/animation/controller/FolmeBlink;->setTintMode(I)Lmiuix/animation/IBlinkStyle;

    invoke-direct {p0, p2, p3}, Lmiuix/preference/i;->U(ILandroidx/preference/Preference;)V

    iget-object p2, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p2, p0}, Lmiuix/animation/controller/FolmeBlink;->attach(Lmiuix/animation/internal/BlinkStateObserver;)V

    iget-object p2, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    new-array p3, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, v2, p3}, Lmiuix/animation/controller/FolmeBlink;->startBlink(I[Lmiuix/animation/base/AnimConfig;)V

    iput-object p1, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    :cond_0
    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lmiuix/preference/i;->o:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    return-void
.end method

.method public static synthetic s(Lmiuix/preference/i;Landroidx/preference/h;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/preference/i;->P(Landroidx/preference/h;I)V

    return-void
.end method

.method private t(Landroidx/preference/Preference;)Z
    .locals 1

    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    instance-of v0, p1, Lmiuix/preference/b;

    if-eqz v0, :cond_1

    check-cast p1, Lmiuix/preference/b;

    invoke-interface {p1}, Lmiuix/preference/b;->a()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic u(Lmiuix/preference/i;[Lmiuix/preference/i$f;)[Lmiuix/preference/i$f;
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    return-object p1
.end method

.method static synthetic v(Lmiuix/preference/i;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    return-object p0
.end method

.method static synthetic w(Lmiuix/preference/i;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/preference/i;->t:Z

    return p0
.end method

.method static synthetic x(Lmiuix/preference/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/i;->t:Z

    return p1
.end method

.method static synthetic y(Lmiuix/preference/i;)I
    .locals 0

    iget p0, p0, Lmiuix/preference/i;->r:I

    return p0
.end method

.method static synthetic z(Lmiuix/preference/i;I)I
    .locals 0

    iput p1, p0, Lmiuix/preference/i;->r:I

    return p1
.end method


# virtual methods
.method public C(Landroidx/preference/h;IILandroidx/preference/Preference;)V
    .locals 1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget v0, p0, Lmiuix/preference/i;->r:I

    if-ne p2, v0, :cond_2

    iget-boolean p2, p0, Lmiuix/preference/i;->t:Z

    if-nez p2, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lmiuix/preference/o;->l:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmiuix/preference/i;->Y(Landroid/view/View;ILandroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lmiuix/preference/i;->t:Z

    goto :goto_0

    :cond_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget p3, Lmiuix/preference/o;->l:I

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->a0(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public D()V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public F()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    return-object v0
.end method

.method G(I)I
    .locals 1

    iget-object v0, p0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object p1, v0, p1

    iget p1, p1, Lmiuix/preference/i$f;->b:I

    return p1
.end method

.method public J(Landroid/content/Context;)V
    .locals 2

    sget v0, Lmiuix/preference/k;->w:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->i:I

    sget v0, Lmiuix/preference/k;->a:I

    invoke-static {p1, v0}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->k:I

    sget v0, Lmiuix/preference/k;->b:I

    invoke-static {p1, v0}, Lpl/d;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->l:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->j:I

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/m;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->m:I

    sget v0, Lmiuix/preference/k;->k:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/i;->A:I

    sget v0, Lmiuix/preference/k;->j:I

    invoke-static {p1, v0}, Lpl/d;->g(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/i;->B:I

    return-void
.end method

.method public L()Z
    .locals 2

    iget v0, p0, Lmiuix/preference/i;->r:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Q(Landroidx/preference/h;)V
    .locals 0
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->a0(Landroid/view/View;)V

    return-void
.end method

.method public R(Landroidx/preference/h;)V
    .locals 0
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->a0(Landroid/view/View;)V

    return-void
.end method

.method public S(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmiuix/preference/i;->L()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroidx/preference/c;->i(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    if-nez v1, :cond_2

    new-instance v1, Lmiuix/preference/i$c;

    invoke-direct {v1, p0}, Lmiuix/preference/i$c;-><init>(Lmiuix/preference/i;)V

    iput-object v1, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    :cond_2
    iget-object v1, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    if-nez v1, :cond_3

    new-instance v1, Lmiuix/preference/i$d;

    invoke-direct {v1, p0}, Lmiuix/preference/i$d;-><init>(Lmiuix/preference/i;)V

    iput-object v1, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    :cond_3
    iget-object v1, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/RecyclerView$n;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_4

    move v0, v2

    :cond_4
    move v2, v0

    :cond_5
    if-nez v2, :cond_7

    iput p2, p0, Lmiuix/preference/i;->r:I

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/i;->o:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_6
    iget p1, p0, Lmiuix/preference/i;->r:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    new-instance v0, Lmiuix/preference/i$e;

    invoke-direct {v0, p0, p2}, Lmiuix/preference/i$e;-><init>(Lmiuix/preference/i;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$s;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public T(Landroid/graphics/Paint;IIIII)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i;->E:Landroid/graphics/Paint;

    iput p2, p0, Lmiuix/preference/i;->F:I

    iput p3, p0, Lmiuix/preference/i;->G:I

    iput p4, p0, Lmiuix/preference/i;->H:I

    iput p5, p0, Lmiuix/preference/i;->I:I

    iput p6, p0, Lmiuix/preference/i;->J:I

    return-void
.end method

.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/preference/i;->x:Z

    return-void
.end method

.method public X(Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/i;->y:Landroidx/preference/Preference;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public Z()V
    .locals 1

    iget-object v0, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lmiuix/preference/i;->a0(Landroid/view/View;)V

    iget-object v0, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiuix/preference/i;->t:Z

    :cond_1
    return-void
.end method

.method public a0(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lmiuix/preference/i;->L()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/preference/o;->l:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IBlinkStyle;->stopBlink()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lmiuix/preference/i;->s:Landroid/view/View;

    :cond_1
    const/4 p1, -0x1

    iput p1, p0, Lmiuix/preference/i;->r:I

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v1, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    iput-object v1, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    :cond_2
    :goto_0
    return-void
.end method

.method public d(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/preference/c;->d(Landroidx/preference/Preference;)V

    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiuix/preference/i;->D:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroidx/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/c;->f(Landroidx/preference/Preference;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/f;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    instance-of v1, v0, Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object v0, p0, Lmiuix/preference/i;->h:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$h;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    iput-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/i;->p(Landroidx/preference/h;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    iget-object p1, p0, Lmiuix/preference/i;->h:Landroidx/recyclerview/widget/RecyclerView$j;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$j;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    iput p1, p0, Lmiuix/preference/i;->q:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->Q(Landroidx/preference/h;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$c0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Landroidx/preference/h;

    invoke-virtual {p0, p1}, Lmiuix/preference/i;->R(Landroidx/preference/h;)V

    return-void
.end method

.method public p(Landroidx/preference/h;I)V
    .locals 22
    .param p1    # Landroidx/preference/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    instance-of v9, v1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v9, :cond_0

    check-cast v1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v1

    instance-of v2, v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v2, :cond_0

    check-cast v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v1, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->storeVisibilityBeforeUpdate(Landroidx/preference/h;)V

    :cond_0
    invoke-super/range {p0 .. p2}, Landroidx/preference/c;->p(Landroidx/preference/h;I)V

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lmiuix/view/d;->b(Landroid/view/View;Z)V

    invoke-virtual {v0, v8}, Landroidx/preference/c;->n(I)Landroidx/preference/Preference;

    move-result-object v11

    instance-of v1, v11, Lmiuix/preference/DropDownPreference;

    const/4 v2, 0x1

    xor-int/lit8 v12, v1, 0x1

    if-eqz v12, :cond_1

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-boolean v1, v0, Lmiuix/preference/i;->x:Z

    if-eqz v1, :cond_3

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/i;->y:Landroidx/preference/Preference;

    if-ne v11, v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v10

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setActivated(Z)V

    :goto_1
    iget-object v1, v0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object v1, v1, v8

    if-eqz v1, :cond_4

    iget v1, v1, Lmiuix/preference/i$f;->b:I

    goto :goto_2

    :cond_4
    const/4 v1, -0x1

    :goto_2
    move v13, v1

    invoke-direct {v0, v11, v8}, Lmiuix/preference/i;->H(Landroidx/preference/Preference;I)I

    move-result v14

    invoke-direct {v0, v14, v11}, Lmiuix/preference/i;->N(ILandroidx/preference/Preference;)Z

    move-result v1

    const/16 v15, 0x1f

    if-eqz v1, :cond_7

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v15, :cond_7

    iget v1, v0, Lmiuix/preference/i;->J:I

    int-to-float v3, v1

    if-eq v13, v14, :cond_5

    move v4, v2

    goto :goto_3

    :cond_5
    move v4, v10

    :goto_3
    iget-object v1, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->l()J

    move-result-wide v1

    goto :goto_4

    :cond_6
    const-wide/16 v1, 0x0

    :goto_4
    move-wide v5, v1

    move-object/from16 v1, p1

    move v2, v14

    invoke-static/range {v1 .. v6}, Ldm/c;->d(Landroidx/recyclerview/widget/RecyclerView$c0;IFZJ)V

    :cond_7
    if-nez v11, :cond_8

    return-void

    :cond_8
    iget v1, v0, Lmiuix/preference/i;->q:I

    iget-boolean v2, v0, Lmiuix/preference/i;->C:Z

    if-nez v2, :cond_f

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v11, Landroidx/preference/PreferenceGroup;

    if-nez v3, :cond_9

    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v3, :cond_9

    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v3, :cond_9

    instance-of v3, v11, Lmiuix/preference/RadioButtonPreference;

    if-eqz v3, :cond_a

    :cond_9
    instance-of v3, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v3, :cond_c

    :cond_a
    if-eqz v2, :cond_15

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v3, v0, Lmiuix/preference/i;->B:I

    goto :goto_5

    :cond_b
    iget v3, v0, Lmiuix/preference/i;->A:I

    :goto_5
    if-eqz v2, :cond_14

    goto/16 :goto_a

    :cond_c
    instance-of v3, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_e

    if-eqz v2, :cond_15

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_d

    move-object/from16 v16, v2

    check-cast v16, Landroid/graphics/drawable/LayerDrawable;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    new-instance v3, Lol/e;

    invoke-direct {v3, v2}, Lol/e;-><init>(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lmiuix/preference/i;->g:[Lmiuix/preference/i$f;

    aget-object v4, v4, v8

    iget-object v4, v4, Lmiuix/preference/i$f;->a:[I

    if-eqz v4, :cond_d

    invoke-virtual {v3, v4}, Lol/e;->d([I)Z

    :cond_d
    :goto_6
    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    goto :goto_7

    :cond_e
    if-eqz v2, :cond_15

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    :goto_7
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_c

    :cond_f
    instance-of v2, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_11

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget v3, v0, Lmiuix/preference/i;->B:I

    goto :goto_8

    :cond_10
    iget v3, v0, Lmiuix/preference/i;->A:I

    :goto_8
    if-eqz v2, :cond_14

    goto :goto_a

    :cond_11
    instance-of v2, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_12

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_15

    goto :goto_6

    :cond_12
    instance-of v2, v11, Lmiuix/preference/j;

    if-eqz v2, :cond_15

    move-object v2, v11

    check-cast v2, Lmiuix/preference/j;

    invoke-interface {v2}, Lmiuix/preference/j;->c()Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v3, v0, Lmiuix/preference/i;->B:I

    goto :goto_9

    :cond_13
    iget v3, v0, Lmiuix/preference/i;->A:I

    :goto_9
    if-eqz v2, :cond_14

    :goto_a
    iget v2, v0, Lmiuix/preference/i;->A:I

    goto :goto_b

    :cond_14
    iget v2, v0, Lmiuix/preference/i;->B:I

    :goto_b
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    add-int/2addr v10, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v10, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_15
    :goto_c
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    instance-of v2, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v2, :cond_17

    instance-of v2, v11, Lmiuix/preference/RadioButtonPreference;

    if-nez v2, :cond_17

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v2, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/n1;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lmiuix/preference/i;->i:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_d

    :cond_16
    iget-object v2, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lmiuix/preference/i;->i:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    :goto_d
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/i;->z:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_17
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v3, Lmiuix/preference/o;->c:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-direct {v0, v11}, Lmiuix/preference/i;->K(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x0

    goto :goto_e

    :cond_18
    const/16 v3, 0x8

    :goto_e
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    invoke-direct {v0, v11}, Lmiuix/preference/i;->t(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_25

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v4, Lmiuix/preference/o;->k:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_20

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_1c

    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lmiuix/preference/k;->u:I

    invoke-static {v3, v4}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v4, :cond_1b

    invoke-direct {v0, v14, v11}, Lmiuix/preference/i;->N(ILandroidx/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1a

    if-gt v2, v15, :cond_1a

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    iget v4, v0, Lmiuix/preference/i;->J:I

    invoke-virtual {v3, v4, v14}, Lcom/miui/support/drawable/CardStateDrawable;->g(II)V

    move-object v3, v2

    const/4 v4, 0x0

    goto :goto_f

    :cond_1a
    move-object v2, v3

    check-cast v2, Lcom/miui/support/drawable/CardStateDrawable;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/miui/support/drawable/CardStateDrawable;->f(I)V

    :goto_f
    move-object v2, v3

    check-cast v2, Lcom/miui/support/drawable/CardStateDrawable;

    invoke-virtual {v2, v4, v4, v4, v4}, Lcom/miui/support/drawable/CardStateDrawable;->d(IIII)V

    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v2, v11}, Lmiuix/preference/i;->W(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    :cond_1b
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v12, :cond_25

    :goto_10
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/i;->w:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_14

    :cond_1c
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v4, :cond_1d

    move-object v4, v3

    check-cast v4, Lcom/miui/support/drawable/CardStateDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Lcom/miui/support/drawable/CardStateDrawable;->d(IIII)V

    iget-object v5, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-direct {v0, v5, v4, v11}, Lmiuix/preference/i;->W(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    if-gt v2, v15, :cond_25

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v3, :cond_25

    invoke-direct {v0, v14, v11}, Lmiuix/preference/i;->N(ILandroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_25

    if-eq v13, v14, :cond_1f

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v3, Lmiuix/preference/h;

    invoke-direct {v3, v0, v7, v14}, Lmiuix/preference/h;-><init>(Lmiuix/preference/i;Landroidx/preference/h;I)V

    iget-object v4, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    if-eqz v4, :cond_1e

    iget-object v4, v0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->l()J

    move-result-wide v4

    goto :goto_11

    :cond_1e
    const-wide/16 v4, 0x64

    :goto_11
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_14

    :cond_1f
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    iget v4, v0, Lmiuix/preference/i;->J:I

    invoke-virtual {v3, v4, v14}, Lcom/miui/support/drawable/CardStateDrawable;->g(II)V

    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v12, :cond_25

    goto :goto_10

    :cond_20
    const/4 v5, 0x0

    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_23

    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/k;->h:I

    invoke-static {v2, v3}, Lpl/d;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_22

    iget-boolean v3, v0, Lmiuix/preference/i;->C:Z

    if-eqz v3, :cond_21

    move/from16 v19, v5

    goto :goto_12

    :cond_21
    move/from16 v19, v1

    :goto_12
    move-object v15, v2

    check-cast v15, Landroid/graphics/drawable/LayerDrawable;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move/from16 v17, v19

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_22
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v12, :cond_25

    goto/16 :goto_10

    :cond_23
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_25

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    iget-boolean v3, v0, Lmiuix/preference/i;->C:Z

    if-eqz v3, :cond_24

    move/from16 v19, v5

    goto :goto_13

    :cond_24
    move/from16 v19, v1

    :goto_13
    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    move-object v15, v2

    move/from16 v17, v19

    invoke-virtual/range {v15 .. v20}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_25
    :goto_14
    invoke-virtual {v0, v7, v8, v14, v11}, Lmiuix/preference/i;->C(Landroidx/preference/h;IILandroidx/preference/Preference;)V

    instance-of v2, v11, Lmiuix/preference/f;

    if-eqz v2, :cond_26

    check-cast v11, Lmiuix/preference/f;

    invoke-interface {v11, v7, v1}, Lmiuix/preference/f;->b(Landroidx/preference/h;I)V

    :cond_26
    if-eqz v9, :cond_27

    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast v1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v1

    instance-of v2, v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v2, :cond_27

    check-cast v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v1, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->refreshLayoutIfVisibleChanged(Landroidx/preference/h;)V

    :cond_27
    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .locals 1

    iget v0, p0, Lmiuix/preference/i;->q:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lmiuix/preference/i;->q:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateBlinkState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$r;)V

    iget-object p1, p0, Lmiuix/preference/i;->n:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lmiuix/preference/i;->v:Landroidx/recyclerview/widget/RecyclerView$r;

    iput-object v0, p0, Lmiuix/preference/i;->u:Landroid/view/View$OnTouchListener;

    iget-object p1, p0, Lmiuix/preference/i;->p:Lmiuix/animation/controller/FolmeBlink;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    return-void
.end method
