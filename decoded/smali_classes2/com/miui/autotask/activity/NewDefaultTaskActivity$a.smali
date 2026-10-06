.class Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/activity/NewDefaultTaskActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->f0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$n;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const-string p2, " "

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->k0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->g0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p2}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->l0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/miui/autotask/activity/NewDefaultTaskActivity$a;->a:Lcom/miui/autotask/activity/NewDefaultTaskActivity;

    invoke-static {p1}, Lcom/miui/autotask/activity/NewDefaultTaskActivity;->m0(Lcom/miui/autotask/activity/NewDefaultTaskActivity;)V

    :cond_3
    :goto_0
    return-void
.end method
