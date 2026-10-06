.class public Ltb/b$f;
.super Ltb/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltb/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Ltb/b$d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltb/b$b;-><init>(Landroid/view/View;Ltb/b$d;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/permcenter/detection/model/b;)V
    .locals 3

    instance-of v0, p1, Lcom/miui/permcenter/detection/model/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/permcenter/detection/model/e;

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/e;->b()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/e;->b()I

    move-result v1

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/permcenter/detection/model/e;->b()I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
