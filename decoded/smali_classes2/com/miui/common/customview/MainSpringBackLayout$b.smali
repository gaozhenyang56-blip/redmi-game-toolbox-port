.class Lcom/miui/common/customview/MainSpringBackLayout$b;
.super Landroidx/recyclerview/widget/RecyclerView$s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/customview/MainSpringBackLayout;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/common/customview/MainSpringBackLayout;


# direct methods
.method constructor <init>(Lcom/miui/common/customview/MainSpringBackLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$s;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$s;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p2, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->U(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object p2, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p2, p1}, Lcom/miui/common/customview/MainSpringBackLayout;->S(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p2, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->U(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object p2, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p2, p1}, Lcom/miui/common/customview/MainSpringBackLayout;->S(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p1, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->P(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout$b;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {p1, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->Q(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    :goto_0
    return-void
.end method
