.class public final Lcom/miui/gamebooster/aihelper/a$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/aihelper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAIHelperAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AIHelperAdapter.kt\ncom/miui/gamebooster/aihelper/AIHelperAdapter$ItemViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,244:1\n1855#2,2:245\n1#3:247\n*S KotlinDebug\n*F\n+ 1 AIHelperAdapter.kt\ncom/miui/gamebooster/aihelper/AIHelperAdapter$ItemViewHolder\n*L\n188#1:245,2\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Lmiuix/androidbasewidget/widget/SeekBar;

.field private final g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private final h:Landroid/widget/TextView;

.field private final i:Loj/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic j:Lcom/miui/gamebooster/aihelper/a;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/aihelper/a;Landroid/view/View;)V
    .locals 1
    .param p1    # Lcom/miui/gamebooster/aihelper/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->j:Lcom/miui/gamebooster/aihelper/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b022f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const p1, 0x7f0b07e4

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    const p1, 0x7f0b0d00

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->c:Landroid/widget/TextView;

    const p1, 0x7f0b0b13

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->d:Landroid/view/View;

    const p1, 0x7f0b0b12

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->e:Landroid/view/View;

    const p1, 0x7f0b0a32

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/androidbasewidget/widget/SeekBar;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    const p1, 0x7f0b0a36

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const p1, 0x7f0b0a3f

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->h:Landroid/widget/TextView;

    new-instance p1, Lcom/miui/gamebooster/aihelper/a$c$c;

    invoke-direct {p1, p2}, Lcom/miui/gamebooster/aihelper/a$c$c;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Loj/g;->a(Lak/a;)Loj/f;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->i:Loj/f;

    return-void
.end method

.method public static synthetic a(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Landroid/view/View;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/gamebooster/aihelper/a$c;->f(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lbk/y;Landroid/view/View;Z)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/miui/gamebooster/aihelper/a$c;->e(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lbk/y;Landroid/view/View;Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/miui/gamebooster/aihelper/a$c;)Lmiuix/androidbasewidget/widget/SeekBar;
    .locals 0

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    return-object p0
.end method

.method private static final e(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lbk/y;Landroid/view/View;Z)V
    .locals 3

    const-string p5, "this$0"

    invoke-static {p0, p5}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$this_with"

    invoke-static {p1, p5}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "this$1"

    invoke-static {p2, p5}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$datum"

    invoke-static {p3, p5}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p5, "$mutexSelectableListener"

    invoke-static {p4, p5}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p0, Lcom/miui/gamebooster/aihelper/a$c;->e:Landroid/view/View;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p6, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p5, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowMutexSelectable()Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDefaultValue()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    iget-object p4, p4, Lbk/y;->a:Ljava/lang/Object;

    check-cast p4, Lcom/miui/gamebooster/aihelper/j;

    if-eqz p4, :cond_4

    invoke-virtual {p4, p0}, Lcom/miui/gamebooster/aihelper/j;->a(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowSubItemWithSeekBar()Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/a$c;->d:Landroid/view/View;

    if-eqz p6, :cond_3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_3
    invoke-static {p2}, Lcom/miui/gamebooster/aihelper/a;->k(Lcom/miui/gamebooster/aihelper/a;)Lcom/miui/gamebooster/aihelper/a$d;

    move-result-object p0

    invoke-virtual {p3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object p2

    if-eqz p6, :cond_5

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDefaultValue()Ljava/lang/Integer;

    move-result-object p1

    goto :goto_4

    :cond_5
    const/4 p1, 0x0

    :goto_4
    invoke-interface {p0, p2, p6, p1}, Lcom/miui/gamebooster/aihelper/a$d;->a(Ljava/lang/String;ZLjava/lang/Integer;)V

    if-eqz p6, :cond_6

    const/4 p0, 0x1

    goto :goto_5

    :cond_6
    const/4 p0, -0x1

    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setOperateValue(Ljava/lang/Integer;)V

    return-void
.end method

.method private static final f(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Landroid/view/View;Z)V
    .locals 6

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$1"

    invoke-static {p1, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$setting"

    invoke-static {p2, p3}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/miui/gamebooster/aihelper/a$c;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lcom/miui/gamebooster/aihelper/a;->k(Lcom/miui/gamebooster/aihelper/a;)Lcom/miui/gamebooster/aihelper/a$d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateKey()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move v2, p4

    invoke-static/range {v0 .. v5}, Lcom/miui/gamebooster/aihelper/a$d$a;->a(Lcom/miui/gamebooster/aihelper/a$d;Ljava/lang/String;ZLjava/lang/Integer;ILjava/lang/Object;)V

    if-eqz p4, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, -0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->setOperateValue(Ljava/lang/Integer;)V

    return-void
.end method

.method private final g()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c;->i:Loj/f;

    invoke-interface {v0}, Loj/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public final d(Lcom/miui/gamebooster/aihelper/AISettingDTO;)V
    .locals 13
    .param p1    # Lcom/miui/gamebooster/aihelper/AISettingDTO;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "datum"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c;->j:Lcom/miui/gamebooster/aihelper/a;

    new-instance v7, Lbk/y;

    invoke-direct {v7}, Lbk/y;-><init>()V

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudValue()Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, -0x2

    const-string v4, "itemView"

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_1

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v2, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v8, v2}, Lcom/miui/gamebooster/aihelper/a;->l(Lcom/miui/gamebooster/aihelper/a;ZLandroid/view/View;)V

    :goto_0
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v2, v4}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10, v2}, Lcom/miui/gamebooster/aihelper/a;->l(Lcom/miui/gamebooster/aihelper/a;ZLandroid/view/View;)V

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    iput v10, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v11, p0, Lcom/miui/gamebooster/aihelper/a$c;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    new-instance v12, Lcom/miui/gamebooster/aihelper/b;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/miui/gamebooster/aihelper/b;-><init>(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;Lbk/y;)V

    invoke-virtual {v11, v12}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_4

    move v1, v8

    goto :goto_4

    :cond_4
    move v1, v10

    :goto_4
    invoke-virtual {v11, v1, v10}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->f(ZZ)V

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/a$c;->e:Landroid/view/View;

    if-eqz v1, :cond_5

    move v1, v10

    goto :goto_5

    :cond_5
    move v1, v9

    :goto_5
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getCloudValue()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getStatusText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v10

    goto :goto_7

    :cond_9
    :goto_6
    move v3, v9

    :goto_7
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->d:Landroid/view/View;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowSubItemWithSeekBar()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_8

    :cond_a
    move v3, v10

    goto :goto_9

    :cond_b
    :goto_8
    move v3, v8

    :goto_9
    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/miui/gamebooster/aihelper/a$c;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v3}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b()Z

    move-result v3

    if-eqz v3, :cond_c

    move v3, v10

    goto :goto_a

    :cond_c
    move v3, v9

    :goto_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    move v1, v10

    goto :goto_c

    :cond_e
    :goto_b
    move v1, v8

    :goto_c
    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setTitleText(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setSubTitleText(Ljava/lang/String;)V

    new-instance v4, Lcom/miui/gamebooster/aihelper/c;

    invoke-direct {v4, p0, v0, v3}, Lcom/miui/gamebooster/aihelper/c;-><init>(Lcom/miui/gamebooster/aihelper/a$c;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;)V

    invoke-virtual {v1, v4}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_f

    goto :goto_d

    :cond_f
    move v8, v10

    :goto_d
    invoke-virtual {v1, v8, v10}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->f(ZZ)V

    if-eqz v8, :cond_10

    move v1, v10

    goto :goto_e

    :cond_10
    move v1, v9

    :goto_e
    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/a$c;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowSeekbar()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->g:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b()Z

    move-result v1

    if-eqz v1, :cond_12

    move v1, v10

    goto :goto_f

    :cond_12
    move v1, v9

    :goto_f
    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/miui/gamebooster/aihelper/a$c;->h:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->h:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getThirdValue()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v1, v2, :cond_13

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_13
    iget-object v1, p0, Lcom/miui/gamebooster/aihelper/a$c;->f:Lmiuix/androidbasewidget/widget/SeekBar;

    new-instance v2, Lcom/miui/gamebooster/aihelper/a$c$a;

    invoke-direct {v2, v3, v0, p0}, Lcom/miui/gamebooster/aihelper/a$c$a;-><init>(Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/a$c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_14
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getSecondSettings()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/aihelper/AISettingDTO;

    invoke-direct {p0}, Lcom/miui/gamebooster/aihelper/a$c;->g()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0e01a2

    iget-object v6, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b0bc9

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0b02fc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "this"

    invoke-static {v4, v5}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getValue()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_11

    :cond_15
    move v5, v10

    :goto_11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getOperateValue()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_16

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getDefaultValue()Ljava/lang/Integer;

    move-result-object v5

    :cond_16
    invoke-virtual {v3}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->getValue()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5, v3}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_10

    :cond_17
    new-instance v2, Lcom/miui/gamebooster/aihelper/j;

    new-instance v3, Lcom/miui/gamebooster/aihelper/a$c$b;

    invoke-direct {v3, p1, v0, p1}, Lcom/miui/gamebooster/aihelper/a$c$b;-><init>(Lcom/miui/gamebooster/aihelper/AISettingDTO;Lcom/miui/gamebooster/aihelper/a;Lcom/miui/gamebooster/aihelper/AISettingDTO;)V

    invoke-direct {v2, v1, v3}, Lcom/miui/gamebooster/aihelper/j;-><init>(Ljava/util/Map;Lak/l;)V

    iput-object v2, v7, Lbk/y;->a:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/a$c;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/miui/gamebooster/aihelper/AISettingDTO;->needShowMutexSelectable()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/miui/gamebooster/aihelper/a$c;->a:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {p1}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->b()Z

    move-result p1

    if-eqz p1, :cond_18

    move v9, v10

    :cond_18
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
