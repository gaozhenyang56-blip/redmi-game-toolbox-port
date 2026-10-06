.class public final synthetic Lcom/miui/warningcenter/disasterwarning/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$u;

.field public final synthetic c:[I

.field public final synthetic d:Landroid/graphics/Point;

.field public final synthetic e:[I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->b:Landroidx/recyclerview/widget/RecyclerView$u;

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->c:[I

    iput-object p4, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->d:Landroid/graphics/Point;

    iput-object p5, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->e:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->b:Landroidx/recyclerview/widget/RecyclerView$u;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->c:[I

    iget-object v3, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->d:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/miui/warningcenter/disasterwarning/view/b;->e:[I

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->c(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroidx/recyclerview/widget/RecyclerView$u;[ILandroid/graphics/Point;[ILjava/lang/Integer;)V

    return-void
.end method
