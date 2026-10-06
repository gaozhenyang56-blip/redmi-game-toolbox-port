.class public final Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nElectricProtectionFunctionPreference.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ElectricProtectionFunctionPreference.kt\ncom/miui/electricrisk/ElectricProtectionFunctionPreference\n+ 2 Context.kt\nandroidx/core/content/ContextKt\n*L\n1#1,121:1\n52#2,9:122\n*S KotlinDebug\n*F\n+ 1 ElectricProtectionFunctionPreference.kt\ncom/miui/electricrisk/ElectricProtectionFunctionPreference\n*L\n48#1:122,9\n*E\n"
    }
.end annotation


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private b:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private d:I

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILbk/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const p3, 0x7f0405ff

    const p6, 0x101008e

    invoke-static {p1, p3, p6}, Landroidx/core/content/res/k;->a(Landroid/content/Context;II)I

    move-result p3

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->f(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;Landroid/view/View;)V

    return-void
.end method

.method private final e(Landroid/content/Context;)Z
    .locals 3

    iget v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/electricrisk/h;->n()Z

    move-result v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/electricrisk/h;->p()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/miui/electricrisk/h;->b()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/miui/electricrisk/h;->f()Z

    move-result v1

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/miui/electricrisk/h;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/miui/electricrisk/h;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    :goto_0
    return v1
.end method

.method private static final f(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->j()V

    return-void
.end method

.method private final g(Landroid/widget/TextView;Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zls"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-nez v0, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_1

    const v3, 0x7f1206fa

    goto :goto_0

    :cond_1
    const v3, 0x7f1206f9

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    if-nez v0, :cond_2

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    if-eqz p2, :cond_3

    const v0, 0x7f0602e4

    goto :goto_2

    :cond_3
    const v0, 0x7f0602e3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_4

    const p2, 0x7f080e9a

    goto :goto_3

    :cond_4
    const p2, 0x7f080e9b

    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private final h(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "context"

    if-nez v0, :cond_0

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    if-nez v4, :cond_1

    invoke-static {v2}, Lbk/m;->r(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    :goto_0
    invoke-direct {v3, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private final i()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.OPEN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "current_page_type"

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120210

    invoke-static {v0, v1}, Lx4/y1;->j(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    sget-object v0, Lef/y;->P0:[I

    const-string v1, "ElectricFunctionPreference"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->a:I

    const/4 p2, 0x3

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->b:I

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->c:I

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private final j()V
    .locals 2

    iget v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Lcom/miui/electricrisk/ElectricProtectScreenActivity;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->i()V

    goto :goto_1

    :cond_2
    const-class v0, Lcom/miui/electricrisk/ElectricProtectAppActivity;

    goto :goto_0

    :cond_3
    const-class v0, Lcom/miui/electricrisk/ElectricProtectMmsActivity;

    goto :goto_0

    :cond_4
    const-class v0, Lcom/miui/electricrisk/ElectricProtectPhoneActivity;

    :goto_0
    invoke-direct {p0, v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->h(Ljava/lang/Class;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/h;)V
    .locals 5
    .param p1    # Landroidx/preference/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/h;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0bc9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.itemView.findViewById(R.id.title)"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v2, 0x7f0b0afa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "holder.itemView.findViewById(R.id.status)"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v3, 0x7f0b0b21

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "holder.itemView.findViewById(R.id.summary)"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v4, 0x7f0b0506

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "holder.itemView.findViewById(R.id.icon)"

    invoke-static {v3, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/widget/ImageView;

    iget v4, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->b:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->c:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->a:I

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "context"

    invoke-static {v0}, Lbk/m;->r(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->e(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;->g(Landroid/widget/TextView;Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance v0, Lcom/miui/electricrisk/v;

    invoke-direct {v0, p0}, Lcom/miui/electricrisk/v;-><init>(Lcom/miui/electricrisk/ElectricProtectionFunctionPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
