.class public Lcom/miui/warningcenter/widget/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$m;
.source "SourceFile"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$m;-><init>()V

    iput p1, p0, Lcom/miui/warningcenter/widget/SpacesItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    iget p2, p0, Lcom/miui/warningcenter/widget/SpacesItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method
