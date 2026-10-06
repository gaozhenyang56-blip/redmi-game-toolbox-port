.class public Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;->a:Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;->c(JJJ)V

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120d86

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, p3, p4}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v4

    const/4 p3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4, p1, p2}, Lsm/a;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0b02e9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;->a:Lcom/miui/optimizecenter/storage/view/DeepCleanChartView;

    const v0, 0x7f0b0b0a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/view/PreferenceItemSpaceView;->b:Landroid/widget/TextView;

    return-void
.end method
