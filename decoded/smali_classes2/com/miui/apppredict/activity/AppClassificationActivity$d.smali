.class Lcom/miui/apppredict/activity/AppClassificationActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/miuixbasewidget/widget/AlphabetIndexer$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/apppredict/activity/AppClassificationActivity;->J0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/AppClassificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$d;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$d;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->w0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    return-void
.end method

.method public c(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$d;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->v0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$d;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->v0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$n;->getItemCount()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$d;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {v0}, Lcom/miui/apppredict/activity/AppClassificationActivity;->v0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    return v0
.end method
