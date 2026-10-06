.class Lcom/miui/common/customview/MainSpringBackLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/customview/MainSpringBackLayout;->W()V
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

    iput-object p1, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 7

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0, p3}, Lcom/miui/common/customview/MainSpringBackLayout;->O(Lcom/miui/common/customview/MainSpringBackLayout;I)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    sub-int v2, p3, p5

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v2, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->P(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->Q(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    goto :goto_0

    :cond_0
    if-gez p3, :cond_1

    sub-int v2, p3, p5

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v2, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->P(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object v1, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v1, v0}, Lcom/miui/common/customview/MainSpringBackLayout;->Q(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    goto :goto_0

    :cond_1
    if-gez p3, :cond_2

    sub-int v0, p3, p5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->R(Lcom/miui/common/customview/MainSpringBackLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->T(Lcom/miui/common/customview/MainSpringBackLayout;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->S(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    goto :goto_0

    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->Q(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0, v1}, Lcom/miui/common/customview/MainSpringBackLayout;->P(Lcom/miui/common/customview/MainSpringBackLayout;Z)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->V(Lcom/miui/common/customview/MainSpringBackLayout;)Landroid/view/View$OnScrollChangeListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/customview/MainSpringBackLayout$a;->a:Lcom/miui/common/customview/MainSpringBackLayout;

    invoke-static {v0}, Lcom/miui/common/customview/MainSpringBackLayout;->V(Lcom/miui/common/customview/MainSpringBackLayout;)Landroid/view/View$OnScrollChangeListener;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    :cond_4
    return-void
.end method
