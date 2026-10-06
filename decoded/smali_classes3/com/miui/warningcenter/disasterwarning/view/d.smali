.class public final synthetic Lcom/miui/warningcenter/disasterwarning/view/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

.field public final synthetic b:Landroid/graphics/Rect;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$u;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

    iput-object p2, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->b:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->c:Landroidx/recyclerview/widget/RecyclerView$u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->a:Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;

    iget-object v1, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->b:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/warningcenter/disasterwarning/view/d;->c:Landroidx/recyclerview/widget/RecyclerView$u;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;->e(Lcom/miui/warningcenter/disasterwarning/view/FlowLayoutManager;Landroid/graphics/Rect;Landroidx/recyclerview/widget/RecyclerView$u;Ljava/lang/Integer;)V

    return-void
.end method
