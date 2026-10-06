.class public final Lcom/miui/networkassistant/ui/widget/HorizontalListSpaceItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private final space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/widget/HorizontalListSpaceItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    iget p2, p0, Lcom/miui/networkassistant/ui/widget/HorizontalListSpaceItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_0
    return-void
.end method
